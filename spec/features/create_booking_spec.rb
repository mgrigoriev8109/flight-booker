# spec/features/create_city_spec.rb

require 'rails_helper'

RSpec.describe 'Creating a booking', type: :feature do
  scenario 'valid inputs' do
    visit new_booking_path
    fill_in 'Name', with: 'Bob'
    click_on 'Create Booking'
    visit cities_path
    expect(page).to have_content('Bob')
  end
end
