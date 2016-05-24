require 'rails_helper'


describe Product do

	before do
		#here you put your code to generate test content
		@product = Product.create!(name: "race bike")
		@user = User.create!(:email => "nak.soberagency@gmail.com", :password => "xxxxxxx")
		@product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
		@product.comments.create!(rating: 5, user: @user, body: "Great bike!")
		@product.comments.create!(rating: 3, user: @user, body: "Mehh!")

		expect(Product.new(description: "Nice bike")).not_to be_valid
	end

	it "returns the average rating of all comments" do

	end
	
end