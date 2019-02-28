class AddPostingNumberToCrewMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :crew_members, :posting_number, :integer
  end
end
