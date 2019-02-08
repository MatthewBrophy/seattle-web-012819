class WishMaker < ActiveRecord::Base
  has_many :wishes
  has_many :fountains, through: :wishes

end