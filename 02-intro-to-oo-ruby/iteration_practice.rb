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

def all_players
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]

  home_players + away_players
end
                # string
def find_player(player_name)
  # array of hashes
  all_players.find do |player| # hash
    # string                # string
    player[:player_name] == player_name
  end


  # same thing using each

  # found_player = nil
  # all_players.each do |player|
  #   if player[:player_name] == player_name
  #     found_player = player
  #   end
  # end

  # found_player
end

def player_names
  # return an array of  all players' names
  # all_players.map do |player|
  #   player[:player_name]
  # end

  player_names = []

  all_players.each do |player|
    player_names << player[:player_name]
  end

  player_names
end

def big_shoes
  # return an array of players
  # with shoe size greater than 10

  # all_players.select do |player|
  #   player[:shoe].to_i > 10
  # end

  players = []
  all_players.each do |player|
    if player[:shoe].to_i > 10
      players << player
    end
  end

  players
end

binding.pry
