require "rails_helper"

RSpec.describe "creating product" do
  it "creates a new product and redirect to products page" do
    visit "/"
    click_link "Add New Product"
    expect(current_path).to eq("/products/new")

    fill_in "product[name]", with: "Light Saber"
    fill_in "product[description]", with: "Star Wars Sword"
    fill_in "product[price]", with: "199.99"
    click_button "Create"
    expect(current_path).to eq("/")
    expect(page).to have_text("Light Saber")
  end
end