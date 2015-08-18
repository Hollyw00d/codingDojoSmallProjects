require 'rails_helper'

RSpec.describe Product, type: :model do
  it "requires a name" do
    product = Product.new(name: "")
    product.valid?
    expect(product.errors[:name].any?).to eq(true)
  end

  it "requires a price" do
    product = Product.new(price: "")
    product.valid?
    expect(product.errors[:price].any?).to eq(true)
  end

  it "requires a descritpion to be least 7 characters" do
    product = Product.new(description: "Good")
    product.valid?
    expect(product.errors[:description].any?).to eq(true)
  end
end
