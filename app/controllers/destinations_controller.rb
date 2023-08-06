class DestinationsController < ApplicationController
    before_action :set_destination, only: [:show, :edit, :update, :destroy]
  
    def index
      destinations = Destination.all
      render json: destinations
    end
  
  
         # GET /attractions/:id
         def show
          @destination = find_destination
            render json: @destination
         
              
        end
  
    def new
      @destination = Destination.new
    end
  

      # POST /attractions
      def create
        @destination = Destination.create!(destination_params)
        render json: @destination, status: :created
      end

  
    def edit
    end
  
    def update
      if @destination.update(destination_params)
        redirect_to @destination, notice: 'Destination was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @destination.destroy
      redirect_to destinations_url, notice: 'Destination was successfully destroyed.'
    end
  
    private


    def find_destination
      Destination.find(params[:id])
    end
  
    def set_destination
      @destination = Destination.find(params[:id])
    end
  
    def destination_params
      params.require(:destination).permit(:name, :description, :interests, :budget, :location)
    end
  end
  