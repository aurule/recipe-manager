class CreateUserRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_recipes do |t|
      t.references :user, foreign_key: true
      t.references :recipe, foreign_key: true
      t.references :original_recipe, foreign_key: true, null: true
      t.boolean :public_access, null: false, default: false
      t.boolean :allow_copy, null: false, default: false
      t.string :permalink

      t.timestamps
    end
  end
end
