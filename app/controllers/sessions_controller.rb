class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to @user, flash[:notice] = "#{@user.first_name} #{user.last_name} welcome back!"
		else
			flash.now[:alert] = "Invalid email or password"
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to restaurants_path, flash[:notice] => "Successfully logged out"
	end

end
