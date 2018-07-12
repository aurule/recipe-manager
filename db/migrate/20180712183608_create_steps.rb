class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.string :title
      t.text :description, null: false
      t.text :comment

      t.timestamps
    end
  end
end
