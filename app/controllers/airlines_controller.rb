class AirlinesController < ApplicationController
  def show
    @airline = Airline.find(params[:id])
    @passengers = @airline.passengers.where('age >= ?', 18).uniq
  end
end
