class AddClubIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :club_id, :integer
  end
end
