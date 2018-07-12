class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.references :quantity, foreign_key: true
      t.references :cooking_time, foreign_key: true
      t.string :title, null: false
      t.text :description, null: false, default: ""
      t.string :attribution
      t.string :cuisine

      t.timestamps
    end
  end
end
