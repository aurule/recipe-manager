class RemoveFieldsFromUserConfig < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_configs, :measurement_system, :string, default: 'imperial', null: false
    remove_column :user_configs, :temperature_unit, :string, default: 'F', null: false
  end
end
