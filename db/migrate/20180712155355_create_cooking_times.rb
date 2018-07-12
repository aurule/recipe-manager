class CreateCookingTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :cooking_times do |t|
      t.integer :prep_time, default: 0, null: false
      t.integer :active_time, default: 0, null: false
      t.integer :passive_time, default: 0, null: false
      t.integer :total_time, default: 0, null: false

      t.timestamps
    end
  end
end
