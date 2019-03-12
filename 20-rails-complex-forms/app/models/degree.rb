class Degree < ApplicationRecord
  has_many :crew_member_degrees
  has_many :crew_members, through: :crew_member_degrees

end
