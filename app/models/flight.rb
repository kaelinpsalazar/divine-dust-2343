class Flight < ApplicationRecord
   belongs_to :airline
  has_many :flight_passengers
  has_many :passengers, through: :flight_passengers

  validates :number, presence: true
  validates :date, presence: true
  validates :departure_city, presence: true
  validates :arrival_city, presence: true
end