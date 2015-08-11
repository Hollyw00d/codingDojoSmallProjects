require_relative "../spec_helper"

RSpec.describe "listing users" do
  it "displays list of existing users" do
    ["Kobe Bryant", "Julius Randle"].each do |name|
      create_user(name)
    end
    visit "/users"
    expect(page.status_code).to eq(200)
    expect(page).to have_text("Kobe Bryant")
    expect(page).to have_text("Julius Randle")
  end

  it "displays correct fields to create a new user" do
    visit "/users/new"
    expect(page.status_code).to eq(200)
    expect(page).to have_field("email")
    expect(page).to have_field("first_name")
    expect(page).to have_field("last_name")
    expect(page).to have_field("password")
    expect(page).to have_field("confirm_password")
  end
end