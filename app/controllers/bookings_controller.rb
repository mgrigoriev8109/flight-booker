class BookingsController < ApplicationController
  def new
    @flight = Flight.find(booking_params[:flight_id])
    @booking = Booking.new
    @number_of_passengers = passenger_params[:quantity].to_i
    @number_of_passengers.times do
      @booking.passengers.build
    end
  end

  private 

  def booking_params
    params.permit(:flight_id)
  end

  def passenger_params
    params.permit(:quantity)
  end

end
