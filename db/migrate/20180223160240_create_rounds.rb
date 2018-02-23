class CreateRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :rounds do |t|
      t.integer :score
      t.date :date
      t.integer :course_id

      t.timestamps
    end
  end
end
