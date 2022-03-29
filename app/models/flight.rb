class Flight < ApplicationRecord
  belongs_to :arriving_airport, class_name: "Airport", foreign_key: :arriving_airport_id
  belongs_to :departing_airport, class_name: "Airport", foreign_key: :departing_airport_id

  def start_date_formatted
    self.start.strftime("%m/%d/%Y")
  end
end
