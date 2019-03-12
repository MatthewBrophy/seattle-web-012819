class Cat

  attr_accessor :name, :breed, :age, :pet_shop

  @@all = []

  def initialize(age, pet_shop, name="Bugsy", breed="Mix")
    @name = name
    @breed = breed
    @age = age

    # PetShop object
    @pet_shop = pet_shop

    @@all << self
  end

  def self.all
    @@all
  end


end # end of Cat class

# Scratch
# Nap
# Meow

# Return the oldest cat
# Return cats by breed
# Return the average age of all cats
# Return a sorted list of cats by name
