require_relative "../config/environment"


t1 = Team.new("Beef", ["Black", "Brown"], "Wellington", "Cow")
t2 = Team.new("Jazz", ["Purple", "Green"], "Salt Lake City", "Bear")
t3 = Team.new("Bearcats", ["Black", "Orange"], "Monroe", "Bearcat")

p1 = Player.new("Alan Anderson", 8, 12, 13, 15,16, 18, 9, 10)#, t1)
# t1.add_to_roster(p1)
p2 = Player.new("Jeff Adrian", 8, 12, 13, 15,16, 18, 9, 10) #, t2)
p3 = Player.new("Bismak Biyombo", 8, 12, 13, 15,16, 18, 9, 10) #, t2)
p4 = Player.new("Ben Gordon", 8, 12, 13, 15,16, 18, 9, 10) #, t3)
p5 = Player.new("Reggie Evans", 8, 12, 13, 15,16, 18, 9, 10) #, t1)
p6 = Player.new("Brook Lopez", 8, 12, 13, 15,16, 18, 9, 10) #, t1)


ps1 = PetShop.new("Cat City", "Seattle", "cats")
ps2 = PetShop.new("Cat Depot", "L.A.", "cats")

c1 = Cat.new( 7, ps1, "Garfield", "tabby")
c2 = Cat.new( 3, ps1, "Felix", "calico")
c3 = Cat.new( 5, ps1)
c4 = Cat.new( 12, ps2)

binding.pry

# so how to store a list of Players on a Team object
  # we use a hash so that we can keep the attributes of the players
  # we keep Players inside an array on the Team, which has as its elements Player objects
  # database <-- we'll talk about this in week 2!

# how do does a Player know about its team?
  # store the Team object inside of an instance variable

# how then does a Player know about its teammates

