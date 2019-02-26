class RemoveStartAndEndFromItinerary < ActiveRecord::Migration[5.2]
  def change
    remove_column :itineraries, :start
    remove_column :itineraries, :end
  end
end
