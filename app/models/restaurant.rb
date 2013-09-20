class Restaurant < ActiveRecord::Base
	validates :name, :phone_number, :summary, :address, :city, :province, :postal_code, :website, presence: true
	validates :email, format: { with: /(\S+)@(\S+)/ }, presence: true
	validates :max_seats, numericality: true

	has_many :reservations, :dependent => :destroy
	has_many :users, :through => :reservations
end
