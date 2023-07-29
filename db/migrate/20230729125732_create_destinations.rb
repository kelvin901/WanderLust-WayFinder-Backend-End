class CreateDestinations < ActiveRecord::Migration[7.0]
  def change
    create_table :destinations do |t|
      t.string :name
      t.text :description
      t.text :interests
      t.decimal :budget
      t.string :location
      t.timestamps
    end
  end
end
