class Pet
  attr_reader :name
  attr_accessor :mood

  @@all = []

  def initialize(name)
    puts "I'm in Pet!! Generic pet noise!!"
    @name = name
    @mood = "nervous"

    @@all << self
  end

  def self.all
    @@all
  end

end