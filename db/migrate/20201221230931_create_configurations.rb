class CreateConfigurations < ActiveRecord::Migration[6.1]
  def change
    create_table :configurations do |t|
      t.integer :page_id
      t.integer :component_id

      t.timestamps
    end
  end
end
