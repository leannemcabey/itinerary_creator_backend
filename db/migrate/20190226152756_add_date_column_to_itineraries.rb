class AddDateColumnToItineraries < ActiveRecord::Migration[5.2]
  def change
    add_column :itineraries, :date, :date
  end
end
