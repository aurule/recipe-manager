class CreateRevisionIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :revision_ingredients do |t|
      t.references :revision, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.text :notes
      t.integer :order

      t.timestamps
      t.index [:revision, :order], unique: true
    end
  end
end
