class CreateDegrees < ActiveRecord::Migration[5.0]
  def change
    create_table :degrees do |t|
      t.string :name

      t.timestamps
    end

    create_table :crew_member_degrees do |t|
      t.belongs_to :crew_member, foreign_key: true
      t.belongs_to :degree, foreign_key: true

      t.timestamps
    end
  end
end
