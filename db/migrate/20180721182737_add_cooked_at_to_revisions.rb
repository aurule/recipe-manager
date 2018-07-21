class AddCookedAtToRevisions < ActiveRecord::Migration[5.2]
  def change
    add_column :revisions, :cooked_at, :datetime, null: true
  end
end
