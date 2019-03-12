class Wish < ActiveRecord::Base

  belongs_to :fountain
  # THIS IS THE CODE THAT WE ARE REPLACING
  # "fountain" + "_id"
  # def fountain
  #   Fountain.all.find do |f|
  #     f.id == self.fountain_id
  #   end
  # end
  belongs_to :wish_maker
  # THIS IS THE CODE THAT WE ARE REPLACING
  # "wish_maker" + "_id"
  # def wish_maker
  #   WishMaker.all.find do |wm|
  #     wm.id == self.wish_maker_id
  #   end
  # end
end