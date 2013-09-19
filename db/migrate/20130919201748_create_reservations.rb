class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.datetime :reservation_time
      t.integer :party_size

      t.timestamps
    end
  end
end
