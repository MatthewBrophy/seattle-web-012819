class CrewMember < ApplicationRecord
  belongs_to :ship

  validates :name, presence: true
  validates :posting_number, presence: true

end
