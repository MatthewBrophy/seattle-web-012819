class Fountain < ActiveRecord::Base

	attr_accessor :name, :location

	@@all = []

	def initialize(name, location)
		@name = name
		@location = location

		@@all << self
	end

	def self.all
		@@all
	end

	def wishes
		Wish.all.select do |wish|
			wish.fountain == self
		end
	end
end