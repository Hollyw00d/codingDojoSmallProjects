require_relative "../spec_helper"

RSpec.describe "Create, Read, Update, and Delete users" do
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

  it "creates a new user and redirect to users page" do
    visit "/users/new"
    fill_in "email", with: "kobe@lakers.com"
    fill_in "first_name", with: "Kobe"
    fill_in "last_name", with: "Bryant"
    fill_in "password", with: "password"
    fill_in "confirm_password", with: "password"
    click_button "Create User"
    expect(current_path).to eq("/users")
    expect(page).to have_text("Kobe")
  end

  it "displays information about user" do
    u = create_user("Kobe Bryant")
    visit "/users/#{u.id}"
    expect(page).to have_text("#{u.first_name}")
    expect(page).to have_text("#{u.last_name}")
  end

  it "displays information about user being updated" do
    u = create_user("Kobe Bryant")
    visit "/users/#{u.id}/edit"
    expect(find_field("first_name").value).to eq(u.first_name)
    expect(find_field("last_name").value).to eq(u.last_name)
    expect(find_field("email").value).to eq(u.email)
  end

  it "updates user and redirect to users page" do
    u = create_user("Kobe Bryant")
    visit "/users/#{u.id}/edit"

    expect(page.status_code).to eq(200)
    fill_in "first_name", with: "Vino"
    click_button "Update User"
    expect(current_path).to eq("/users")
    expect(page).to have_text("Vino")
    expect(page).not_to have_text("Kobe")
  end

  it "deletes user and redirects to users page" do
    u = create_user("Kobe Bryant")

    visit "/users"
    expect(page).to have_text("Kobe")

    visit "/users/#{u.id}/edit"
    expect(page.status_code).to eq(200)

    click_button "Delete User"
    expect(current_path).to eq("/users")
    expect(page).to_not have_text("Kobe")
  end

end