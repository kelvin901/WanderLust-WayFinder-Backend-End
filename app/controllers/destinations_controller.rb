# app/controllers/destinations_controller.rb
class DestinationsController < ApplicationController
    def index
      # Implement logic for fetching and displaying destinations.
      @destinations = Destination.all
      render json: @destinations
    end
  end
  