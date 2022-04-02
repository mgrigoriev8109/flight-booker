class BookingsController < ApplicationController
  def new
    flight_id = booking_params
    debugger
    #will receive the flight ID and passenger number parameter
    #will use this to help render a form for a new booking
    #this form should display chosen date, airports, flight id
    #along with a set of fields to enter personal information

    #I can create a new blank Passenger object in this controller for each passenger
    #then use fields_for in the view to set up the sub-forms
  end

  private 

  def booking_params
    params.permit(:booking)
    
  end

  def passenger_params
    params.permit(:passengers)
  end

end
