class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
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
      render :new, status: :unprocessable_entity
    end
  end

  private 

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
  end

  def quantity_params
    params.permit(:quantity)
  end

end
