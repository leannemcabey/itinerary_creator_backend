class ItinerarySerializer < ActiveModel::Serializer
  attributes :id, :budget, :title, :notes, :date, :city, :state
  belongs_to :user
  has_many :places, through: :itinerary_places
end
