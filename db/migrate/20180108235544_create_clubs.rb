class CreateClubs < ActiveRecord::Migration[5.1]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :brand
      t.integer :bag_id

      t.timestamps
    end
  end
end
