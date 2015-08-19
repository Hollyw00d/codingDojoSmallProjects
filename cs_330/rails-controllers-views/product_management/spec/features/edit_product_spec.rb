require "rails_helper"

RSpec.describe "product edit page" do
  it "diplays form with current information of product prepopulated" do
    product = Product.create(name: "Helicopter", description: "Fly to Alaska", price: 19999.95)

    visit "/"
    click_link "Edit"

    expect(current_path).to eq("/products/#{product.id}/edit")

    expect(find_field("product[name]").value).to eq(product.name)
    expect(find_field("product[description]").value).to eq(product.description)

  end
end