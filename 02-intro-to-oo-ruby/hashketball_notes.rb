require 'pry'

def game_hash

 {
   home: {
   team_name: "Brooklyn Nets",
   colors: ["Black", "White"],
   players: [
     {
     player_name: "Alan Anderson",
     number: 0,
     shoe: 16,
     points: 22,
     rebounds: 12,
     assists: 12,
     steals: 3,
     blocks: 1,
     slam_dunks: 1
     }, {
     player_name: "Reggie Evans",
     number: 30,
     shoe: 14,
     points: 12,
     rebounds: 12,
     assists: 12,
     steals: 12,
     blocks: 12,
     slam_dunks: 7
     }, {
     player_name: "Brook Lopez",
     number: 11,
     shoe: 17,
     points: 17,
     rebounds: 19,
     assists: 10,
     steals: 3,
     blocks: 1,
     slam_dunks: 15
     }, {
     player_name: "Mason Plumlee",
     number: 1,
     shoe: 19,
     points: 26,
     rebounds: 12,
     assists: 6,
     steals: 3,
     blocks: 8,
     slam_dunks: 5
     }, {
     player_name: "Jason Terry",
     number: 31,
     shoe: 15,
     points: 19,
     rebounds: 2,
     assists: 2,
     steals: 4,
     blocks: 11,
     slam_dunks: 1
     }
   ]
   },
   away: {
   team_name: "Charlotte Hornets",
   colors: ["Turquoise", "Purple"],
   players: [
     {
     player_name: "Jeff Adrien",
     number: 4,
     shoe: 18,
     points: 10,
     rebounds: 1,
     assists: 1,
     steals: 2,
     blocks: 7,
     slam_dunks: 2
     }, {
     player_name: "Bismak Biyombo",
     number: 0,
     shoe: 16,
     points: 12,
     rebounds: 4,
     assists: 7,
     steals: 7,
     blocks: 15,
     slam_dunks: 10
     }, {
     player_name: "DeSagna Diop",
     number: 2,
     shoe: 14,
     points: 24,
     rebounds: 12,
     assists: 12,
     steals: 4,
     blocks: 5,
     slam_dunks: 5
     }, {
     player_name: "Ben Gordon",
     number: 8,
     shoe: 15,
     points: 33,
     rebounds: 3,
     assists: 2,
     steals: 1,
     blocks: 1,
     slam_dunks: 0
     }, {
     player_name: "Brendan Haywood",
     number: 33,
     shoe: 15,
     points: 6,
     rebounds: 12,
     assists: 12,
     steals: 22,
     blocks: 5,
     slam_dunks: 12
     }
   ]
   },

 }
end

def num_points_scored(player_name)
  find_player(player_name)[:points]
end

def shoe_size(player_name)
  find_player(player_name)[:shoe]
end

def find_player(player_name)
  all_players.find do |player|
    player[:player_name] == player_name
  end
end

def all_players
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]

  home_players + away_players
end


# an object is a thing
# an object is something you can act on
# an object is the abstract idea of something attributes
# an object is something that is identiable as a single thing

# Syntactic sugar - shortened or simplified syntax for specific 
# commonly used methods

alan_anderson = {
   player_name: "Alan Anderson",
   number: 0,
   shoe: 16,
   points: 22,
   rebounds: 12,
   assists: 12,
   steals: 3,
   blocks: 1,
   slam_dunks: 1
}

jeff_adrian = {
   player_name: "Jeff Adrien",
   number: 4,
   shoe: 18,
   points: 10,
   rebounds: 1,
   assists: 1,
   steals: 2,
   blocks: 7,
   slam_dunks: 2
}

class Player # must always be capital
  # what is an instance?
  # a class is a blueprint of a house, an instance
  # is an actual house

  # Macro
  # attr_reader :name, :number, :shoe, :points, :rebounds, :assists, :steals, :blocks, :slam_dunks
  # attr_writer :name, :number, :shoe, :points, :rebounds, :assists, :steals, :blocks, :slam_dunks
  


  attr_accessor(:number, :shoe, :points, :rebounds, :assists, :steals, :blocks, :slam_dunks)
  # attr_reader :name

  def initialize(name, number, shoe, points, rebounds, assists, steals, blocks, slam_dunks)
    @name = name
    @number = number
    @shoe = shoe
    @points = points
    @rebounds = rebounds
    @assists = assists
    @steals = steals
    @blocks = blocks
    @slam_dunks = slam_dunks


  end

  # Instance method - getter method
  def name
    @name
  end

  # Instance method - setter method
  # def name=(new_name)
  #   @name = new_name
  # end

  def self.example
    binding.pry
  end

  


end # end of Player class

# Object - the numbers are the object ID
# Object ID - a pointer to this object's location in memory
#<Player:0x007fa1e395d0a8>

p1 = Player.new("Alan Anderson", 8, 12, 13, 15,16, 18, 9, 10)
p2 = Player.new("Jeff Adrian", 8, 12, 13, 15,16, 18, 9, 10)
p3 = Player.new("Bismak Biyombo", 8, 12, 13, 15,16, 18, 9, 10)
p4 = Player.new("Ben Gordon", 8, 12, 13, 15,16, 18, 9, 10)
p5 = Player.new("Reggie Evans", 8, 12, 13, 15,16, 18, 9, 10)
p6 = Player.new("Brook Lopez", 8, 12, 13, 15,16, 18, 9, 10)

binding.pry
