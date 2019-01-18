class ItineraryPlaceSerializer < ActiveModel::Serializer
  attributes :id, :itinerary_id, :place_id
  belongs_to :itinerary, :place
end
