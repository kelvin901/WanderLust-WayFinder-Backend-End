class DestinationInfo < ApplicationRecord
  # Define associations, validations, and any other model-related logic here.

  # Example method to create a new destination info
  def self.create_destination_info(params)
    create(params)
  end

  # Example method to update destination info
  def update_destination_info(params)
    update(params)
  end

  # Example method to delete destination info
  def delete_destination_info
    destroy
  end
end
