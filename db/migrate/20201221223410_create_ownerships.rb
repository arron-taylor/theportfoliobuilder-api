class CreateOwnerships < ActiveRecord::Migration[6.1]
  def change
    create_table :ownerships do |t|
      t.string :type
      t.integer :length
      t.integer :user_id
      t.integer :page_id

      t.timestamps
    end
  end
end
