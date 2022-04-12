class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @flight = find_flight
    @booking = Booking.new
    @number_of_passengers = quantity_params[:quantity].to_i
    @number_of_passengers.times do
      @booking.passengers.build
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to @booking
    else
      render :index, status: :unprocessable_entity
    end
  end

  private 

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
  end

  def quantity_params
    params.permit(:flight_id, :commit, :quantity)
  end

  def find_flight
    Flight.find(params[:flight_id])
  end
end
