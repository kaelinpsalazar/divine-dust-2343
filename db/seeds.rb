# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
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