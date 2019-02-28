class CrewMember < ApplicationRecord
  extend Decommissionable::ClassMethods
  belongs_to :ship
  has_many :crew_member_degrees
  has_many :degrees, through: :crew_member_degrees

  validates :name, presence: true
  validates :posting_number, presence: true



  def self.banana
    all_commissioned
  end
end
