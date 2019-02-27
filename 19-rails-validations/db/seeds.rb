# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ship.create([
  {
    name: 'USS Enterprise (NCC-1701-D)',
    commission_date: 'October 4, 2361'.to_date
  },{
    name: 'USS Enterprise (NCC-1701)',
    commission_date: 'January 1, 2245'.to_date
  }
])

enterprise = Ship.find_by_name('USS Enterprise (NCC-1701)')
enterprise_d = Ship.find_by_name('USS Enterprise (NCC-1701-D)')

CrewMember.create([
  {
    name: 'Jean-Luc Picard',
    position: 'Captain',
    ship: enterprise_d
  },{
    name: 'Geordi La Forge',
    position: 'Chief Engineering Officer',
    ship: enterprise_d
  },{
    name: 'Beverly Crusher',
    position: 'Chief Medical Officer',
    ship: enterprise_d
  }
])

CrewMember.create([
  {
    name: 'James Tiberius Kirk',
    position: 'Captain',
    ship: enterprise
  },{
    name: 'Montgomery Scott',
    position: 'Chief Engineering Officer',
    ship: enterprise
  },{
    name: 'Leonard McCoy',
    position: 'Chief Medical Officer',
    ship: enterprise
  }
])
