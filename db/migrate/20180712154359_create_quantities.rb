class CreateQuantities < ActiveRecord::Migration[5.2]
  def change
    create_table :quantities do |t|
      t.float :amount, null: false
      t.string :unit, null: false

      t.timestamps
    end
  end
end
