class ItinerarySerializer < ActiveModel::Serializer
  attributes :id, :places
  belongs_to :user
end
