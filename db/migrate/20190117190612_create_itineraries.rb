class CreateItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
      t.references :user, foreign_key: true
      t.integer :budget
      t.string :title
      t.date :start
      t.date :end
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
