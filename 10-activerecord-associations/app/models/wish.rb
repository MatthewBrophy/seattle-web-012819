class Wish < ActiveRecord::Base

	attr_accessor :fountain, :wish_maker, :content

	@@all = []

	def initialize(fountain, wish_maker, content)
		@fountain = fountain
		@wish_maker = wish_maker
		@content = content
		@@all << self
	end

	def self.all
		@@all
	end
end