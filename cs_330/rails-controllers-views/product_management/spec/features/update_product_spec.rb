require "rails_helper"

RSpec.describe "updating product" do
  it "updates product and redirects to products page" do
    Product.create(name: "Hang Glider", description: "Fly for 100 yards", price: 1999.95)

    visit "/"
    click_link "Show"
    click_link "Edit"

    fill_in "product[name]", with: "Car"
    click_button "Update"
    expect(current_path).to eq("/")
    expect(page).to have_text("Car")
  end
end