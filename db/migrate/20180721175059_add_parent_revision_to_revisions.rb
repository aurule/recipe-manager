class AddParentRevisionToRevisions < ActiveRecord::Migration[5.2]
  def change
    add_reference :revisions, :parent_revision, foreign_key: { to_table: :revisions }, null: true
  end
end
