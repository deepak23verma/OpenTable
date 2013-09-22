class Reservation < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :user

	# before_create :validate_reservation

	# def validate_reservation
	# 	reservation_time = reservation.reservation_time.to_s
	# 	reserved_seats = Restarants.find[:id].reservations
	# end

	before_create :check_availability
	
	private

	def check_availability
		reservations = Restaurant.find(restaurant_id).reservations.where('reservation_time', reservation_time.to_s)
		total_bookings = reservations.inject(0) { |sum, reservation| sum + reservation.party_size }
		if (Restaurant.find(restaurant_id).max_seats - total_bookings) < party_size
			return false
		end
	end

end
