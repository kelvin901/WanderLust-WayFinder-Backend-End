class RemoveColumnsFromDestinations < ActiveRecord::Migration[7.0]
  def change
    remove_column :destinations, :interests, :text
    remove_column :destinations, :budget, :decimal
  end
end
