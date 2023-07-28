# app/controllers/itineraries_controller.rb
class ItinerariesController < ApplicationController
    def create
      @itinerary = Itinerary.new(itinerary_params)
      if @itinerary.save
        render json: @itinerary, status: :created
      else
        render json: @itinerary.errors, status: :unprocessable_entity
      end
    end
  
    def show
      @itinerary = Itinerary.find(params[:id])
      render json: @itinerary
    end
  
    def update
      @itinerary = Itinerary.find(params[:id])
      if @itinerary.update(itinerary_params)
        render json: @itinerary
      else
        render json: @itinerary.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @itinerary = Itinerary.find(params[:id])
      @itinerary.destroy
      head :no_content
    end
  
    private
  
    def itinerary_params
      params.require(:itinerary).permit(:user_id, :destination_id, :activity, :accommodation)
    end
  end
  