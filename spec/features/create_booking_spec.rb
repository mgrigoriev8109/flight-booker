# spec/features/create_city_spec.rb

require 'rails_helper'

RSpec.describe 'Creating a booking', type: :feature do
  scenario 'valid inputs' do
    Airport.create([{ name: "San Francisco", code: "SFO" }, { name: "New York", code: "NYC" }])

    Flight.create!([
      {departing_airport: Airport.find_by!(code: "SFO"),
      arriving_airport: Airport.find_by!(code: "NYC"),
      start: DateTime.new(2023,12,3,4),
      duration_minutes: 330 }])

    visit new_booking_path(flight_id: 1, quantity: 1)
    fill_in 'booking[passengers_attributes][0][name]', with: 'Test'
    fill_in 'booking[passengers_attributes][0][email]', with: 'Test@gmail.com'
    click_on 'Book Flight'
    visit bookings_path
    expect(page).to have_content('Test')
  end

  scenario 'invalid inputs' do
    Airport.create([{ name: "San Francisco", code: "SFO" }, { name: "New York", code: "NYC" }])

    Flight.create!([
      {departing_airport: Airport.find_by!(code: "SFO"),
      arriving_airport: Airport.find_by!(code: "NYC"),
      start: DateTime.new(2023,12,3,4),
      duration_minutes: 330 }])

    visit new_booking_path(flight_id: 1, quantity: 1)
    fill_in 'booking[passengers_attributes][0][name]', with: ''
    fill_in 'booking[passengers_attributes][0][email]', with: ''
    click_on 'Book Flight'
    visit bookings_path
    expect(page).to have_content("Name can't be blank")
  end
end
