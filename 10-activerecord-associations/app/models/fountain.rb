class Fountain < ActiveRecord::Base
  has_many :wishes
  # THIS IS WHAT WE ARE REPLACING

  # def wishes
  #   Wish.all.select do |wish|
  #     wish.fountain_id == self.id
  #   end
  # end

  # has_many(:wish_makers, {through: :wishes})
  has_many :wish_makers, through: :wishes
  # def wish_makers
  #   self.wishes.map do |wish|
  #     wish.wish_maker
  #   end
  # end
end