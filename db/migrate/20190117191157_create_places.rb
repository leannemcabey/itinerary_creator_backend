class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.references :itinerary, foreign_key: true
      t.string :city
      t.string :state
      t.string :address
      t.string :address2
      t.integer :zipcode
      t.string :longitude
      t.string :latitude
      t.string :name
      t.string :photo
      t.integer :rating
      t.text :description
      t.boolean :permenantly_closed
      t.string :phone_number
      t.string :website
      t.integer :price_level

      t.timestamps
    end
  end
end
