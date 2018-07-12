class CreateUserConfigs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_configs do |t|
      t.references :user, foreign_key: true, null: false, unique: true
      t.string :temperature_unit, default: 'F', null: false
      t.string :measurement_system, default: 'imperial', null: false

      t.timestamps
    end
  end
end
