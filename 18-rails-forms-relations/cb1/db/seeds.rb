# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create title:'Dinner'
Category.create title:'Breakfast'

Recipe.create title:'Chili', category_id: 1
Recipe.create title:'Roast Chicken', category_id: 1


Recipe.create title:'Huevos Rancheros', category_id: 2
Recipe.create title:'Waffles', category_id: 2

