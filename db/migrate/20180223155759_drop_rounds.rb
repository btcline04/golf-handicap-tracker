class DropRounds < ActiveRecord::Migration[5.1]
  def change
    drop_table :rounds
  end
end
