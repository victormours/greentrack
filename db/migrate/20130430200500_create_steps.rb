class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :prefix
      t.string :regex
      t.integer :scenario_id
      t.timestamps
    end
  end
end
