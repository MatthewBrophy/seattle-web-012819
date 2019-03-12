require 'pry'

class Player 
    attr_accessor :number, :shoe, :points, :rebounds, :assists, :steals, :blocks, :slam_dunks
    attr_reader :name


    @@all = []
    @@count = 0

    def initialize(name, number, shoe, points, rebounds, assists, steals, blocks, slam_dunks)
        @@count += 1

        @name = name
        @number = number
        @shoe = shoe
        @points = points
        @rebounds = rebounds
        @assists = assists
        @steals = steals
        @blocks = blocks
        @slam_dunks = slam_dunks
        @id = @@count

        @@all << self

    end

    def  woof
        puts "Bow wow, I'm a #{self.name}"
    end

    def self.all
        @@all
    end

    def self.find_player(name)
        # Player.all == self.all
        self.all.find do |player|
            player.name == name
        end
    end

    # def implicit_call
    #   woof # syntactic sugar for self.woof
    # end

    # def self.example
    #   binding.pry
    # end
end # end of Player class

p1 = Player.new("Alan Anderson", 8, 12, 13, 15,16, 18, 9, 10)
p2 = Player.new("Jeff Adrian", 8, 12, 13, 15,16, 18, 9, 10)
p3 = Player.new("Bismak Biyombo", 8, 12, 13, 15,16, 18, 9, 10)
p4 = Player.new("Ben Gordon", 8, 12, 13, 15,16, 18, 9, 10)
p5 = Player.new("Reggie Evans", 8, 12, 13, 15,16, 18, 9, 10)
p6 = Player.new("Brook Lopez", 8, 12, 13, 15,16, 18, 9, 10)

# $all_players = [p1, p2, p3, p4, p5, p6]


p7 = Player.new("Beef", 8, 12, 13, 15,16, 18, 9, 10)
# $all_players << p7

# def num_points_scored(player_name)
#   found_player = $all_players.find do |player|
#       player.name == player_name
#   end
#   found_player.points
# end


# puts "Hello, which basketball player would you like to create?"
# input = gets.chomp
# found_player = Player.new(input)

# still weird!!
# self
# class vs instance methods
# accessing class variables
# 

binding.pry
