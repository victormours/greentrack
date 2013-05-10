class CreateScenarios < ActiveRecord::Migration
  def change
    create_table :scenarios do |t|
      t.string :name
      t.integer :feature_id
      t.timestamps
    end
  end
end
