class CreateWishes < ActiveRecord::Migration[5.2]
  def change
    create_table :wishes do |t|
      t.text :content
      t.integer :wish_maker_id
      t.integer :fountain_id

      t.timestamps

      # SQL BEING WRITTEN FOR US:
      
      # CREATE TABLE wishes
      # (id INT PRIMARY KEY,
      # content TEXT,
      # wish_maker_id INTEGER,
      # fountain_id INTEGER);
    end
  end
end
