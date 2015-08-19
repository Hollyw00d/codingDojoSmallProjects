require "rails_helper"

RSpec.describe "listing products" do
  it "displays correct fields to create new product" do
    visit "/"
    click_link "Add New Product"
    expect(current_path).to eq("/products/new")
    expect(page).to have_field("product[name]")
    expect(page).to have_field("product[description]")
    expect(page).to have_field("product[price]")
  end
end