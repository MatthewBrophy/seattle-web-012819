class WishCreator < ActiveRecord::Migration[5.2]
  def change
    create_table :wishes do |t|
      t.integer :wish_maker_id
      t.integer :fountain_id
      t.text :content
    end
  end
end
