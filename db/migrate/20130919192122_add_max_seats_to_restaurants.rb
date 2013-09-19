class AddMaxSeatsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :max_seats, :integer
  end
end
