require 'rails_helper'

feature "user updates profile", %{
  As a user
  I want to update my profile
  So that my information is up-to-date
} do
  context "existing user" do
    scenario "successful account update" do
      @user = FactoryGirl.create(:user)
      visit new_user_session_path
      fill_in "Email", with: @user.email
      fill_in "Password", with: @user.password
      click_button "Log in"
      visit edit_user_registration_path

      fill_in "Email", with: "new@email.com"
      fill_in "Password", with: "newpassword"
      fill_in "Password confirmation", with: "newpassword"
      fill_in "Current password", with: @user.password

      click_button "Update"

      successful_update = "Your account has been updated successfully."

      expect(page).to have_content(successful_update)
    end
  end
end
