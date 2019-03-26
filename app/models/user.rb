class User < ApplicationRecord
    has_many :itineraries
    has_many :itinerary_places, through: :itineraries
end
