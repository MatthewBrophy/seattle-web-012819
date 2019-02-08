class CreateWishMaker < ActiveRecord::Migration[5.2]
  def change
    create_table :wish_makers do |t|
      t.string :name
      t.integer :age
      t.string :occupation
    end
  end
end
