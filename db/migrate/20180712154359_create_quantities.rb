class CreateQuantities < ActiveRecord::Migration[5.2]
  def change
    create_table :quantities do |t|
      t.float :amount
      t.string :unit

      t.timestamps
    end
  end
end
