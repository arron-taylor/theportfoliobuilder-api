class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.string :name
      t.string :page_type
      t.string :page_kind
      t.string :user_id

      t.timestamps
    end
  end
end
