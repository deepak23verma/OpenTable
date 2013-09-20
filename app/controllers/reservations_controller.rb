class ReservationsController < ApplicationController
	before_filter :ensure_logged_in, :only => [:new, :edit, :destroy]
	before_filter :load_restaurant

	def show
	end

	def new
		@reservation = Reservation.new
	end

	def create
		@reservation = @restaurant.reservations.build(reservation_params)
		@reservation.user_id = current_user.id
		if @reservation.save
			flash[:notice] = "Your reservation at #{@reservation.restaurant.name} is confirmed"
			redirect_to user_path(current_user.id)
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def load_restaurant
		@restaurant = Restaurant.find(params[:restaurant_id])
	end

	def reservation_params
		params.require(:reservation).permit(:user_id, :restaurant_id, :reservation_time, :party_size)
	end

end
