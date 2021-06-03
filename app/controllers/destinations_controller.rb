class DestinationsController < ApplicationController

    def index
        render(json: Destination.all)
    end

    def show
        destination = Destination.find_by(id: params[:id])
        render(json: destination)
    end
    
end
