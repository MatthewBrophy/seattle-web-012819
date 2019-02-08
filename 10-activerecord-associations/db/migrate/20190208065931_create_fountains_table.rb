class CreateFountainsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :fountains do |t|
      t.string :name
      t.string :location

      t.timestamps

      # SQL BEING WRITTEN FOR US:
      
      # CREATE TABLE fountains
      # (id INT PRIMARY KEY,
      # name VARCHAR,
      # location VARCHAR);
    end
  end
end
