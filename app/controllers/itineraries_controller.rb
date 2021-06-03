class ItinerariesController < ApplicationController

    def index
        render(json: Destination.all)
    end

    def show
        itinerary = Itinerary.find_by(id: params[:id])
        render(json: itinerary)
    end
    
end
