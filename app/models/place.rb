class Place < ApplicationRecord
<<<<<<< HEAD
  belongs_to :itinerary
  
=======
  has_many :itinerary_places
>>>>>>> e28ecf14b9704c1a5374d5f534fe10ee593019e8
end
