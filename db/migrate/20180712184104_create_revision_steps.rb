class CreateRevisionSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :revision_steps do |t|
      t.references :revision, foreign_key: true
      t.references :step, foreign_key: true
      t.integer :order

      t.timestamps
      t.index [:revision, :step], unique: true
      t.index [:revision, :order], unique: true
    end
  end
end
