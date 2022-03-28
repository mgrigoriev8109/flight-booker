class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airport_options = Airport.all.map{ |airport| [ airport.name, airport.id ] }
  end
end
