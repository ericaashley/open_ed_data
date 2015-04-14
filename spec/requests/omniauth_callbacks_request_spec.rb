require 'spec_helper'

describe "GET '/users/auth/facebook/callback'" do
  before(:each) do
    OmniAuth.config.mock_auth[:facebook] = nil
    valid_facebook_login_setup
    get "/users/auth/facebook/callback"
  end

  it "should set user_id" do
    expect(session["warden.user.user.key"][0].first).to eq(User.last.id)
  end

  it "should redirect to root" do
    expect(response).to redirect_to root_path
  end
end

describe "GET 'users/auth/failure'" do
  it "should redirect to user sign up page" do
    get "/users/auth/failure"
    expect(response).to redirect_to new_user_registration_url
  end
end
