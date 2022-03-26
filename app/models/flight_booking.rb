class FlightBooking < ApplicationRecord
  belongs_to: :flight_passenger, class_name: "User"
  belongs_to: :booked_flight, class_name: "Flight"
end
