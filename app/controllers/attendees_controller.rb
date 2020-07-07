class AttendeesController < ApplicationController

    def index
        if params[:show_id]
            @show = Show.find(params[:show_id])
            @attendees = @show.plans.where(location_id: params[:location_id])
            # @attendees = @plans.each do |plan| plan.attendee.name end
        else
            @attendees = Attendee.all
        end
    end

    def new
        @attendee = Attendee.new
    end

    def create
        @attendee = Attendee.create(attendee_params)
        if @attendee.valid?
            redirect_to show_path(Show.first.id)
        else
            flash[:errors] = @attendee.errors.full_messages
            redirect_to new_attendee_path
        end
    end

    private

    def attendee_params
        params.require(:attendee).permit(:name)
    end

end
