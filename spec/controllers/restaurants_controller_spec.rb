require 'spec_helper'

describe RestaurantsController do
	let!(:restaurant) {FactoryGirl.create(:restaurant)}

	it "should return all restaurnts" do
		Restaurant.should_receive(:all)
		get :index
	end

	it "should return a specific restaurant" do
		Restaurant.should_receive(:find)
		get :show, :id => restaurant.id
	end
	
end
