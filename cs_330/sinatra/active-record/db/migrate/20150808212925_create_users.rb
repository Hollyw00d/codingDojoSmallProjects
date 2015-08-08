class CreateUsers < ActiveRecord::Migration
  def change
    # "create_table" creates a SQLite3 table called "users"
    create_table :users do |t|
      # Code below creates "first_name" and "last_name" rows in the "users" table
      t.string :first_name
      t.string :last_name
      # Code below creates "created_at" and "updated_at" rows in the "users" table
      t.timestamps null: false
    end
  end
end
