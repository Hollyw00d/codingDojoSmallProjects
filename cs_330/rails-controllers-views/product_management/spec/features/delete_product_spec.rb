require "rails_helper"

RSpec.describe "deleting a product" do
  it "deletes product and redirects to products page" do
    Product.create(name: "Hoverboard", description: "Get the future now", price: 1999.95)

    visit "/"
    expect(page).to have_text("Hoverboard")
    click_button "Delete"
    expect(page).to_not have_text("Hoverboard")
  end
end