class CreateFountainsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :fountains do |t|
      t.string :name
      t.string :location
    end

    # CREATE TABLE fountains
    # (id INT PRIMARY KEY,
    # name VARCHAR,
    # location VARCHAR);
  end
end
