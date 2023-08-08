class AddBudgetToItineraries < ActiveRecord::Migration[7.0]
  def change
    add_column :itineraries, :budget, :decimal
  end
end
