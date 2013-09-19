class Restaurant < ActiveRecord::Base
	validates :name, :phone_number, :summary, :address, :city, :province, :postal_code, :website, presence: true
	validates :email, format: { with: /(\S+)@(\S+)/ }, presence: true
end
