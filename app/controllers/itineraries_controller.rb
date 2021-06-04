class ItinerariesController < ApplicationController

    def index
        render(json: Itinerary.all)
    end

    def show
        itinerary = Itinerary.find_by(id: params[:id])
        render(json: itinerary)
    end
    
end
