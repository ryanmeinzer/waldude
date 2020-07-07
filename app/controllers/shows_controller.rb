class ShowsController < ApplicationController

    def index
        @shows = Show.all
    end

    def show
        @show = Show.find(params[:id])
    end

    # def attendees_index
    #     @show = Show.find(params[:id])
    #     @attendees = @show.attendees
    #     render 'attendees/index'
    # end

end
