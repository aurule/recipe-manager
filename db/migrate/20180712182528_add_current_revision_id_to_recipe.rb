class AddCurrentRevisionIdToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :current_revision_id, :integer
  end
end
