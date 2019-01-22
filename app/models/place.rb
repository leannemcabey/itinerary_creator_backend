class Place < ApplicationRecord
  has_many :itinerary_places
  has_many :itineraries, through: :itinerary_places
end
