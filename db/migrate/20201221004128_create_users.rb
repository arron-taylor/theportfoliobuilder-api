class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :password_digest
      t.string :user_type
      t.string :access
      t.string :avatar
      t.string :theme

      t.timestamps
    end
  end
end
