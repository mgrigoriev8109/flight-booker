class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airport_options = Airport.all.map{ |airport| [ airport.name, airport.id ] }
    if flight_params.empty?
      @flight_results = []
    else
      @flight_results = Flight.all.where(flight_params)
    end
  end

  private 

  def flight_params
    params.permit(:departing_airport_id, :arriving_airport_id, :start)
  end
end
