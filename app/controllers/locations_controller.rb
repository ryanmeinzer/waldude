class LocationsController < ApplicationController

    def index
        if params[:show_id]
            @locations = Show.find(params[:show_id]).locations
        else
            @locations = Location.all
        end
    end

end
