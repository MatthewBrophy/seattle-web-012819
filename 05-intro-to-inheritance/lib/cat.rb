class Cat < Pet
  include Animal::Mammal::InstanceMethods
  extend Animal::Mammal::ClassMethods



  def initialize(name, cattitude)
    puts "I'm in Cat!! Mreowwww!!"

    super(name)
    @cattitude = cattitude
  end
end
