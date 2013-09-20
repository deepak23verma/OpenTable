class UsersController < ApplicationController
	
	# def index
	# end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			flash[:notice] = "#{@user.first_name}'s profile successfully updated"
			redirect_to @user
		else
			render :edit
		end
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		raise @user.inspect
		if @user.save
			flash[:notice] = "#{@user.first_name}, Welcome to OpenTable! Bon Appetit!"
			redirect_to @user
		else
			render :new
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		flash[:alert] = "User deleted!"
		redirect_to restaurants_path
	end

private
	
	def user_params
		params.require(:user).permit(:first_name, :last_name, :password, :password_confirmation, :user_type, :email, :phone_number)
	end

end
