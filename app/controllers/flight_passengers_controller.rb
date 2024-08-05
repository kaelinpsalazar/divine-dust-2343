class FlightPassengersController < ApplicationController
  belongs_to :flight
  belongs_to :passenger
end
