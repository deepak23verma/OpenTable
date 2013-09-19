class User < ActiveRecord::Base
	validates :first_name, :last_name, :password_digest, :phone_number, presence: true
	validates :email, format: { with: /(\S+)@(\S+)/ }, presence: true

	has_secure_password
end
