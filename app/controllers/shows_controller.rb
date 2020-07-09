class ShowsController < ApplicationController

    def index
        @shows = Show.all
        @show = Show.new
    end

    def new 
        @show = Show.new
    end

    def create
        @show = Show.create(show_params)
        if @show.valid?
            redirect_to show_path(@show)
        else
            flash[:errors] = @show.errors.full_messages
            redirect_to shows_path
        end
    end

    def show
        @show = Show.find(params[:id])
    end

    # def attendees_index
    #     @show = Show.find(params[:id])
    #     @attendees = @show.attendees
    #     render 'attendees/index'
    # end

    private

    def show_params
        params.require(:show).permit(:artist_name, :stage_name, :date_time)
    end

end
