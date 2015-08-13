class AddCategoryToProducts < ActiveRecord::Migration
  def change
    # Add a "category" column to the
    # existing "products" tabel
    add_column :products, :category, :string

    # If line below was commented in it
    # would remove the "name" column from the
    # "products" table

    # remove_column :products, :name
  end
end
