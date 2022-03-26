class CreateFlightBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :flight_bookings do |t|

      t.timestamps
    end
  end
end
