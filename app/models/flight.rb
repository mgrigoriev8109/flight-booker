class Flight < ApplicationRecord
  belongs_to :arriving_airport, class_name: "Airport", foreign_key: :arriving_airport_id
  belongs_to :departing_airport, class_name: "Airport", foreign_key: :departing_airport_id

  has_many :passengers, through: :bookings
  has_many :bookings

  def start_date_formatted
    self.start.to_date
  end
end
