class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.references :recipe, foreign_key: true
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
  end
end
