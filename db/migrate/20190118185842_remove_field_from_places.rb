class RemoveFieldFromPlaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :places, :itinerary_id
  end
end
