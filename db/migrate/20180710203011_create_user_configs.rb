class CreateUserConfigs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_configs do |t|
      t.references :user, foreign_key: true, null: false, unique: true
      t.string :temperature_unit
      t.string :measurement_system

      t.timestamps
    end
  end
end
