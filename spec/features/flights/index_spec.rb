require 'rails_helper'

RSpec.describe 'flight index', type: :feature do
  before(:each) do
    @airline_1 = Airline.create!(name: 'Frontier')
    @airline_2 = Airline.create!(name: 'Delta')
    @airline_3 = Airline.create!(name: 'Southwest')
    
    @flight_1 = @airline_1.flights.create!(number: '1727', date: '08/03/24', departure_city: 'Denver', arrival_city: 'Louisville')
    @flight_2 = @airline_2.flights.create!(number: '1834', date: '04/03/24', departure_city: 'New York', arrival_city: 'San Francisco')
    @flight_3 = @airline_3.flights.create!(number: '2674', date: '11/07/24', departure_city: 'Chicago', arrival_city: 'Miami')
    
    @passenger_1 = @flight_1.passengers.create!(name: 'Joe', age: 7)
    @passenger_2 = @flight_1.passengers.create!(name: 'Kaelin', age: 14)
    @passenger_3 = @flight_2.passengers.create!(name: 'Karl', age: 27)
    @passenger_4 = @flight_3.passengers.create!(name: 'Lito', age: 45)
    @passenger_5 = @flight_3.passengers.create!(name: 'Lance', age: 23)
  end

  it 'lists all flights information and passenger information' do
    visit flights_path

    expect(page).to have_content(@flight_1.number)
    expect(page).to have_content(@flight_1.airline.name)
    expect(page).to have_content(@passenger_1.name)
    expect(page).to have_content(@passenger_2.name)
    
    expect(page).to have_content(@flight_2.number)
    expect(page).to have_content(@flight_2.airline.name)
    expect(page).to have_content(@passenger_3.name)
    
    expect(page).to have_content(@flight_3.number)
    expect(page).to have_content(@flight_3.airline.name)
    expect(page).to have_content(@passenger_4.name)
    expect(page).to have_content(@passenger_5.name)
  end
end
