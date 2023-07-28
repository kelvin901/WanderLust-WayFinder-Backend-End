# app/controllers/destination_infos_controller.rb
class DestinationInfosController < ApplicationController
    def create
      @destination_info = DestinationInfo.new(destination_info_params)
      if @destination_info.save
        render json: @destination_info, status: :created
      else
        render json: @destination_info.errors, status: :unprocessable_entity
      end
    end
  
    def show
      @destination_info = DestinationInfo.find(params[:id])
      render json: @destination_info
    end
  
    def update
      @destination_info = DestinationInfo.find(params[:id])
      if @destination_info.update(destination_info_params)
        render json: @destination_info
      else
        render json: @destination_info.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @destination_info = DestinationInfo.find(params[:id])
      @destination_info.destroy
      head :no_content
    end
  
    private
  
    def destination_info_params
      params.require(:destination_info).permit(:destination_id, :attractions, :landmarks, :weather_conditions, :safety_tips)
    end
  end
  