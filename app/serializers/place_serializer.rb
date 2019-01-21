class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :city, :state, :address, :name, :rating, :price_level, :description, :website
  has_many :itinerary_places
end
