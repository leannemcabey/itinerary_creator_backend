class ItinerarySerializer < ActiveModel::Serializer
  attributes :id, :budget, :title, :start, :end, :city, :state
  belongs_to :user
end
