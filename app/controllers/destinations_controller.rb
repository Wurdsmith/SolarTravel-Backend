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
        application = Destination.create(application_params)
        render(json: application)
    end

    private

    def application_params
        params.require(:destination).permit(:name, :distance, :gravity, :temperature, :object_type, :image_url, :itinerary_id)
    end
end
