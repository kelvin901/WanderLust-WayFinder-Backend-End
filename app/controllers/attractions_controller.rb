class AttractionsController < ApplicationController


    rescue_from ActiveRecord::RecordInvalid, with:  :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response 
    
      # GET /attractions
      def index
        attractions = Attraction.all
        render json: attractions
      end
    
      # POST /attractions
      def create
        attraction = Attraction.create!(attraction_params)
        render json: attraction, status: :created
      end
    
      # GET /attractions/:id
      def show
        attraction = find_attraction
          render json: attraction
       
            
      end
    
      # PATCH /attractions/:id
      def update
        attraction = find_attraction
        attraction.update(attraction_params)
          render json: attraction
       
          
      end

      # attractions count

      def count
        destinations = Attraction.all
        statistics = destinations.count
        render json: statistics
    end
    

    
      # DELETE /attraction/:id
      def destroy
        attraction = find_attraction
        attraction
        attraction.destroy
        head :no_content
        
      end
    
      private
    
    
    def render_unprocessable_entity(invalid)
      render json:{error: invalid.record.errors}, status: :unprocessable_entity
    end
    
      def attraction_params
        params.permit(:attraction_name, :description, :image_1, :image_2, :image_3, :image_4, :deadline, :map_url, :budget )
      end
    
      def render_not_found_response
    
        render json: { error: "Attraction not found" }, status: :not_found
    
      end
    
      def find_attraction
        Attraction.find(params[:id])
      end
    
end
    