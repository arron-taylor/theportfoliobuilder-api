class CreateComponents < ActiveRecord::Migration[6.1]
  def change
    create_table :components do |t|
      t.string :name
      t.string :component_type
      t.string :size
      t.string :page_id
      t.string :location

      t.timestamps
    end
  end
end
