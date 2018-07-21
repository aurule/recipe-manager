class CreateRevisionSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :revision_steps do |t|
      t.references :revision, foreign_key: true
      t.references :step, foreign_key: true
      t.integer :order

      t.timestamps
      t.index [:revision_id, :step_id], unique: true
      t.index [:revision_id, :order], unique: true
    end
  end
end
