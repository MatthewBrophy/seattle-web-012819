class PetShop

	attr_accessor :name, :city, :pet_types

	@@all = []

	def initialize(name, city, pet_types)
		@name = name
		@city = city
		@pet_types = pet_types

		@@all << self
	end

	def cats
		Cat.all.select do |cat|
			cat.pet_shop == self
		end
	end

	def stock
		self.cats.length
	end

	def self.all
		@@all


	end
end # end of PetShop class

# sell stuff
# buy stuff
# groom the cats
# feed

# Given a string of a city name, return all PetShops
# that are in that city
# See which one made the most money
# Return the PetShop with the largest inventory
