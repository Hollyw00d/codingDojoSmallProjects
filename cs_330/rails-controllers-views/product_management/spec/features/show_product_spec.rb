require "rails_helper"

RSpec.describe "product details page" do
  it "describes information about product" do
    product = Product.create(name: "Umbrella", description: "Perfect for Seattle", price: 19.95)
    visit "/"
    click_link "Show"
    expect(current_path).to eq("/products/#{product.id}")
    expect(page).to have_text("Umbrella")
    expect(page).to have_text("Perfect for Seattle")
    expect(page).to have_text(19.95)
  end
end