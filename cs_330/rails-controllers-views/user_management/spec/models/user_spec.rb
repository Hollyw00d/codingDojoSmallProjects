require 'rails_helper'

RSpec.describe User, type: :model do

  it "requires a first name" do
    user = User.new(first_name: "")
    user.valid?
    expect(user.errors[:first_name].any?).to eq(true)
  end

  it "requires a last name" do
    user = User.new(last_name: "")
    user.valid?
    expect(user.errors[:last_name].any?).to eq(true)
  end

  it "requires a password" do
    user = User.new(password: "")
    user.valid?
    expect(user.errors[:password].any?).to eq(true)
  end

  it "requires a properly formatted email address" do
    user = User.new(email: "matt@example.com")
    user.valid?
    expect(user.errors[:email].any?).to eq(false)
  end

  it "rejects unproperly formatted email addresses" do
    user = User.new(email: "matt@example")
    user.valid?
    expect(user.errors[:email].any?).to eq(true)
  end

end
