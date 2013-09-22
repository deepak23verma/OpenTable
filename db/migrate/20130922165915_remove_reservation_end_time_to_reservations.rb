class RemoveReservationEndTimeToReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :end_time, :datetime
  end
end
