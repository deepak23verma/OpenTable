require 'spec_helper'

describe Restaurant do
  let!(:restaurant) {FactoryGirl.create(:restaurant)}
  
  it "should be invalid when name is empty" do
	  restaurant.name = nil
	  expect(restaurant).to be_invalid
	end

	it "should be invalid when phone number is empty" do
		restaurant.phone_number = nil
		expect(restaurant).to be_invalid
	end

	it "should be invalid when summary is empty" do
		restaurant.summary = nil
		expect(restaurant).to be_invalid
	end

	it "should be invalid when address is empty" do
		restaurant.address = nil
		expect(restaurant).to be_invalid
	end

	it "should be invalid when city is empty" do
		restaurant.city = nil
		expect(restaurant).to be_invalid
	end

	it "should be invalid when province is empty" do
		restaurant.province = nil
		expect(restaurant).to be_invalid
	end

	it "should be invalid when postal code is empty" do
		restaurant.postal_code = nil
		expect(restaurant).to be_invalid
	end

	it "should be invalid when email is empty" do
		restaurant.email = nil
		expect(restaurant).to be_invalid
	end

	it "should be invalid when the email format is incorrect" do
		restaurant.email = nil
		expect(restaurant).to be_invalid
	end

	it "should be invalid when website is empty" do
		restaurant.website = nil
		expect(restaurant).to be_invalid
	end
		
end
