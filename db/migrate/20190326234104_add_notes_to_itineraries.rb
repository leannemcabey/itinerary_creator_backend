class AddNotesToItineraries < ActiveRecord::Migration[5.2]
  def change
    add_column :itineraries, :notes, :string
  end
end
