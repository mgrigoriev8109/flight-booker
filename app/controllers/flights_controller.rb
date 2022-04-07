class FlightsController < ApplicationController
  def index
    @flights = Flight.all

    if flight_params.empty?
      @flight_results = []
    else      
      @flight_results = find_flights
    end

  end

  private 

  def find_flights
    departure_date = departure_time_params[:start].to_date
    Flight.all.where(flight_params).where(start: departure_date.midnight..(departure_date.midnight + 1.day))
  end

  def flight_params
    params.permit(:departing_airport_id, :arriving_airport_id)
  end

  def passenger_params
    params.permit(:number_of_passengers)
  end

  def departure_time_params
    params.permit(:start)
  end
end
