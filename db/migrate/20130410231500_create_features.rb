class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :name
      t.integer :project_id

      t.timestamps
    end
    add_index :features, [:project_id, :created_at]
  end
end
