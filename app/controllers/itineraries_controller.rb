class ItinerariesController < ApplicationController
    before_action :set_itinerary, only: [:show, :edit, :update, :destroy]
  


     # GET /itineraries
     def index
      itinerary = Itinerary.all
      render json: itinerary
    end
  
    # POST /itineraries
    def create
      itinerary = Itinerary.create!(itinerary_params)
      render json: itinerary, status: :created
    end
  
    # GET /itineraries/:id
    def show
      itinerary = find_itinerary
        render json: itinerary          
    end



     # RENDER LOGGED IN USER ITINERARY
  def user_itineraries
    user_itineraries = Itinerary.where(user_id: params[:user_id]).includes(:destination)
    render json: user_itineraries, include: :destination
  end


    def edit
    end
  
    def update
      if @itinerary.update(itinerary_params)
        redirect_to @itinerary, notice: 'Itinerary was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @itinerary.destroy
      redirect_to itineraries_url, notice: 'Itinerary was successfully destroyed.'
    end
  
    private
  
    def set_itinerary
      @itinerary = Itinerary.find(params[:id])
    end

    def find_itinerary
      Itinerary.find(params[:id])
    end
  
    def itinerary_params
      params.require(:itinerary).permit(:user_id, :destination_id, :date, :time, :activity, :duration, :budget)
    end
  end
  