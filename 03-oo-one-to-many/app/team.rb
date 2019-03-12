class Team

  attr_accessor :name, :colors, :city, :mascot

  @@all = []

  def initialize(name, colors, city, mascot)
    # String
    @name = name
    # Array (because more than one value) of Strings
    @colors = colors
    # String
    @city = city
    # String
    @mascot = mascot

    @@all << self
  end

  def self.all
    @@all
  end

  # DEPRECATED! We don't need to do this!
                    # Player object
  # def add_to_roster(player)
  #   @roster << player
  # end

  def roster
    Player.all.select do |player|
      player.team == self
    end
  end


end # end of Team class