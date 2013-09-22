class UserMailer < ActionMailer::Base
  default from: "deepak.23.verma@gmail.com"

  def welcome_email(user)
  	@user = user
  	@url = 'http://localhost:3000/sessions/new'
  	mail(to: @user.email, subject: 'Welcome to Seat Yourself')
  end

  def reservation_confirmation(reservation)
  	@reservation = reservation
  	@url = 'http://localhost:3000/users/#{@reservation.user_id}'
  	mail(to: @reservation.user.email, subject: "Seat Yourself confirmation: #{reservation.restaurant.name}")
  end
end
