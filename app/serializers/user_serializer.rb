class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :itineraries
  has_many :itinerary_places, through: :itineraries
end
