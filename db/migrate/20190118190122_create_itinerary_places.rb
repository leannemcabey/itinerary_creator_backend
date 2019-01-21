class CreateItineraryPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :itinerary_places do |t|
      t.references :itinerary, foreign_key: true
      t.references :place, foreign_key: true
    end
  end
end
