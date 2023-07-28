class CreateDestinationInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :destination_infos do |t|
      t.references :destination, null: false, foreign_key: true
      t.text :attractions
      t.text :landmarks
      t.text :weather_conditions
      t.text :safety_tips

      t.timestamps
    end
  end
end
