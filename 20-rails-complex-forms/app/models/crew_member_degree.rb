class CrewMemberDegree < ApplicationRecord
  belongs_to :degree
  belongs_to :crew_member

end
