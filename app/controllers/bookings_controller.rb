class BookingsController < ApplicationController
  def new
    debugger
    #will receive the flight ID and passenger number parameter
    #will use this to help render a form for a new booking
    #this form should display chosen date, airports, flight id
    #along with a set of fields to enter personal information

    #I can create a new blank Passenger object in this controller for each passenger
    #then use fields_for in the view to set up the sub-forms
  end
end
