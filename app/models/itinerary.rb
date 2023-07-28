class Itinerary < ApplicationRecord
  # Define associations, validations, and any other model-related logic here.

  # Example method to create a new itinerary
  def self.create_itinerary(params)
    create(params)
  end

  # Example method to update an itinerary
  def update_itinerary(params)
    update(params)
  end

  # Example method to delete an itinerary
  def delete_itinerary
    destroy
  end
end
