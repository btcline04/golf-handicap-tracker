class RemoveUserIdFromClubs < ActiveRecord::Migration[5.1]
  def change
    remove_column :clubs, :user_id, :integer
  end
end
