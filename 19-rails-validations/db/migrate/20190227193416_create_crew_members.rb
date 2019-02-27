class CreateCrewMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :crew_members do |t|
      t.string :name
      t.string :position
      t.belongs_to :ship, foreign_key: true

      t.timestamps
    end
  end
end
