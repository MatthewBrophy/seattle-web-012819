class CrewMember < ApplicationRecord
  extend Decommissionable::ClassMethods
  belongs_to :ship
  has_many :crew_member_degrees
  has_many :degrees, through: :crew_member_degrees

  validates :name, presence: true, length: {minimum: 2}
  validate :can_be_captain
  validates :posting_number, presence: true, numericality: { only_integer: true }, :inclusion => 1..10

  accepts_nested_attributes_for :degrees


  def can_be_captain
    if self.captain? && self.posting_number < 4
      self.errors.add(:position, 'A captain must have at least 4 postings')
    end
  end

  def captain?
    self.position.downcase == 'captain'
  end

  def self.banana
    all_commissioned
  end


  def degrees_attributes=(degrees_attributes)
    degrees_attributes.values.each do |degree_attribute|
      degree = Degree.find_or_create_by(degree_attribute)
      self.degrees << degree
    end
  end
end
