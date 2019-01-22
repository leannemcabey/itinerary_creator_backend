class User < ApplicationRecord
    has_many :itineraries 
    has_many :places, through: :itineraries 
end
