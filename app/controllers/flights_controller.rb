class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airport_options = Airport.all.map{ |airport| [ airport.name, airport.id ] }

    if flight_params.empty?
      @flight_results = []
    else
      departure_date = departure_time_param[:start].to_date
      @flight_results = Flight.all.where(flight_params).where(start: departure_date.midnight..(departure_date.midnight + 1.day))
    end

    @number_of_passengers = passenger_params
  end

  private 

  def flight_params
    params.permit(:departing_airport_id, :arriving_airport_id)
  end

  def passenger_params
    params.permit(:number_of_passengers)
  end

  def departure_time_param
    params.permit(:start)
  end
end
