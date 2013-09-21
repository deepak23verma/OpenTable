require 'spec_helper'

describe Reservation do
	let!(:reservation) {FactoryGirl.create(:reservation)}

	it "should return the requested reservation date" do
	  expect(requested_time(:reservation)).to be "2013-09-19 16:17:48"
	end

end
