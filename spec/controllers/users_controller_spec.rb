require 'rails_helper'

describe UsersController do
  describe "DELETE destroy" do
    before :each do
      @user = FactoryGirl.create(:user)
    end

    it "deletes the user" do
      expect {
        delete :destroy, id: @user, use_route: :devise_registrations
      }.to change(User, :count).by(-1)
    end

    it "redirects to root" do
      delete :destroy, id: @user, use_route: :devise_registrations
      expect(response).to redirect_to root_path
    end
  end
end
