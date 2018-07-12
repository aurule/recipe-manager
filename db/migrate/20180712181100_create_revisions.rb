class CreateRevisions < ActiveRecord::Migration[5.2]
  def change
    create_table :revisions do |t|
      t.references :recipe, foreign_key: true
      t.string :notes
      t.integer :rating

      t.timestamps
    end
  end
end
