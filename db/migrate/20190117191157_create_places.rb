class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.references :itinerary, foreign_key: true
      t.string :city
      t.string :state
      t.string :address
      t.string :longitude
      t.string :latitude
      t.string :name
      t.integer :rating
      t.text :description
      t.string :phone_number
      t.string :website
      t.integer :price_level

      t.timestamps
    end
  end
end
