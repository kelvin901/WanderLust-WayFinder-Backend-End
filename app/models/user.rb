class User < ApplicationRecord
    # Define associations, validations, and any other model-related logic here.
  
    # Example method to retrieve all users
    def self.get_all_users
      all
    end
  
    # Example method to create a new user
    def self.create_user(params)
      create(params)
    end
  
    # Example method to update a user's profile
    def update_profile(params)
      update(params)
    end
  end
  