class AddBagIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :bag_id, :integer
  end
end
