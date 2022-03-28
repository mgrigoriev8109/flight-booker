class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @flight_options = @flights.map{ |flight| [ flight.arriving_airport_id, flight.departing_airport_id ] }
  end
end
