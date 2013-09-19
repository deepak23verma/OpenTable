class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all
	end

	def show
		@restaurant = Restaurant.find(params[:id])
	end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end

	def update
		@restaurant = Restaurant.find(params[:id])
		if @restaurant.update(restaurant_params)
			flash[:notice] = "restaurant updated!"
			redirect_to @restaurant
		else
			render :edit
		end		
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(restaurant_params)
		if @restaurant.save
			flash[:notice] = "Restaurant created!"
			redirect_to @restaurant
		else
			render :new
		end
	end

	def destroy
		@restaurant = Restaurant.find(params[:id])
		@restaurant.destroy
		flash[:alert] = "Restaurant deleted!"
		redirect_to restaurants_path
	end

private

	def restaurant_params
		params.require(:restaurant).permit(:name, :phone_number, :summary, :address, :city, :province, :postal_code, :email, :website, :max_seats)
	end




end
