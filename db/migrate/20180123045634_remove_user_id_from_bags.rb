class RemoveUserIdFromBags < ActiveRecord::Migration[5.1]
  def change
    remove_column :bags, :user_id, :integer
  end
end
