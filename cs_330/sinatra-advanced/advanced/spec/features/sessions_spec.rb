require_relative "../spec_helper"

RSpec.describe "signing in" do
  before do
    @user = create_user("Kobe Bryant")
    visit "/sessions/new"
    expect(page.status_code).to eq(200)
  end
  it "prompts for email and password" do
    expect(page).to have_field("email")
    expect(page).to have_field("password")
  end
  it "signs in the user if the email/password combination is valid" do
    fill_in "email", with: @user.email
    fill_in "password", with: "password"
    click_button "Sign In"
    expect(page).to have_text("#{@user.first_name}")
  end
  it "doesn't sign in user if the email/password combination is invalid" do
    fill_in "email", with: @user.email
    fill_in "password", with: "wrongpassword"
    click_button "Sign In"
    expect(page).to have_text("Invalid")
  end

  it "signs out the user and redirect to login page" do
    @user = create_user("Kobe Bryant")
    visit "/users"
    click_button "Sign Out"
    expect(current_path).to eq("/sessions/new")
  end
end