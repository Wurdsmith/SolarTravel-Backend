class DestinationsController < ApplicationController

    def index
        render(json: Destination.all)
    end

    def show
        destination = Destination.find_by(id: params[:id])
        render(json: destination)
    end
    
    def create
        binding.pry
        application = Destination.create(destination_params)
        render(json: application)
    end

    def destroy
        destination = Destination.find_by(id: params[:id])
        destination.destroy
        render(json: destination)
        
    end

    
    
    private

    def destination_params
        params.require(:destination).permit(:name, :distance, :gravity, :temperature, :object_type, :image_url, :temperature_class, :gravity_class, :distance_class, :itinerary_id)
    end
end
