require 'rails_helper'

describe UsersController, :type => :controller do 

	before do 
		@user = User.create!(email: "peter@example.com", password: "1234567890")
		@user2 = User.create!(email: "roger@example.com", password: "abcdefghij")
	end

	describe "GET #show" do
		context "User is logged in" do
			expect(assigns(:user)).to eq @user

		end

		context "No user is logged in" do
			it "redirects to login" do
				get :show, id: @user.id
				expect(response).to redirect_to(root_path)
			end
		end
	end

	
end