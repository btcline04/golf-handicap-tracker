class AddUserIdToBags < ActiveRecord::Migration[5.1]
  def change
    add_column :bags, :user_id, :integer
  end
end
