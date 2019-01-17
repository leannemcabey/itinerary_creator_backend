class PlaceSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :itinerary
end
