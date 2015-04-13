require 'rails_helper'

feature "user deletes account", %{
  As a user
  I want to delete my account
  So that I no longer have an account on this site
} do
  context "existing user" do
    scenario "successful account deletion" do
      @user = FactoryGirl.create(:user)
      visit new_user_session_path
      fill_in "Email", with: @user.email
      fill_in "Password", with: @user.password
      click_button "Log in"
      visit edit_user_registration_path

      click_button "Cancel my account"

      successful_deletion = "Bye! Your account has been successfully cancelled."

      expect(page).to have_content(successful_deletion)
      expect(User.count).to eq(0)
    end
  end
end
