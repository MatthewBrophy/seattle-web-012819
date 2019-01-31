class Player 
  attr_accessor :number, :shoe, :points, :rebounds, :assists, :steals, :blocks, :slam_dunks, :team
  attr_reader :name


  @@all = []
  @@count = 0

  def initialize(name, number, shoe, points, rebounds, assists, steals, blocks, slam_dunks, team)
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

    # instance of Team class
    @team = team
    # @team.add_to_roster(self)



    @@all << self

  end

  def retire
    # self.team.roster.delete(self)
    # self.class.all.delete(self)
    # Player.all.delete(self)
    @@all.delete(self)
  end

  # def join_a_team(team)
  #   @team = team
  # end

  def dunk
    self.score_two
    @slam_dunks += 1
  end

  def lay_up
    self.score_two
  end

  def score_two
    @points += 2
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

end # end of Player class





















