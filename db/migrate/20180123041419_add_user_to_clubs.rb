class AddUserToClubs < ActiveRecord::Migration[5.1]
  def change
    add_reference :clubs, :user, foreign_key: true
  end
end
