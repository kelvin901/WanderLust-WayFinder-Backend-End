class CreateAttractions < ActiveRecord::Migration[7.0]
  def change
    create_table :attractions do |t|
      t.string :attraction_name
      t.text :description
      t.string :image_1
      t.string :image_2
      t.string :image_3
      t.string :image_4
      t.datetime :deadline
      t.string :map_url
      t.decimal :budget
      t.timestamps
    end
  end
end
