class User < ActiveRecord::Base
	validates :first_name, :last_name, :password_digest, :user_type, :phone_number, presence: true
	validates :email, format: { with: /(\S+)@(\S+)/ }, presence: true
end
