require "rails_helper"

feature "guest creates account", %{
  As a user
  I want to sign in
  So that I can access member-only parts of the app
} do
  facebook_login_success = "Successfully authenticated from Facebook account."
  facebook_login_failure = "Could not authenticate you from Facebook because"

  context "new user" do
    scenario "successful sign up with facebook" do
      valid_facebook_login_setup

      visit new_user_session_path

      click_link "Sign in with Facebook"

      expect(page).to have_content(facebook_login_success)
      expect(page).to have_link("Sign Out", user_session_path)

      expect(User.count).to eq(1)
    end

    scenario "failure to sign up with invalid facebook credentials" do
      OmniAuth.config.mock_auth[:facebook] = :invalid_credentials

      visit new_user_session_path

      click_link "Sign in with Facebook"

      expect(page).to have_content(facebook_login_failure)
      expect(page).to have_link("Sign in with Facebook", new_user_session_path)
      expect(User.count).to eq(0)
    end
  end

  context "existing user" do
    let(:user) { FactoryGirl.create(:user) }
    let(:identity) { FactoryGirl.create(:identity, user: user) }

    before :each do
      OmniAuth.config.mock_auth[:facebook] = valid_facebook_login_setup
    end

    scenario "sign in with Facebook credentials" do
      visit new_user_session_path
      click_link "Sign in with Facebook"
      expect(page).to have_content(facebook_login_success)
      expect(page).to have_link("Sign Out", user_session_path)

      expect(User.count).to eq(1)
    end

    scenario "sign out" do
      visit new_user_session_path
      click_link "Sign in with Facebook"

      expect(page).to have_content(facebook_login_success)

      click_link "Sign Out"

      expect(page).to_not have_content(facebook_login_success)
      expect(page).to have_content("Signed out successfully.")
    end
  end
end
