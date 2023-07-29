class CreateItineraries < ActiveRecord::Migration[7.0]
  def change
    create_table :itineraries do |t|
      t.references :user, null: false, foreign_key: true
      t.references :destination, null: false, foreign_key: true
      t.date :date
      t.time :time
      t.text :activity
      t.text :duration

      t.timestamps
    end
  end
end
