class AttendeesController < ApplicationController

    def index
        if params[:show_id]
            @show = Show.find(params[:show_id])
            @plans = @show.plans.where(location_id: params[:location_id])
            # @attendees = @plans.each do |plan| plan.attendee.name end
        else
            @attendees = Attendee.all
        end
    end

    def new
        if session[:attendee_id]
            @attendee = Attendee.find(session[:attendee_id])
        # else
        #     @attendee = Attendee.new
        end
    end

    def create
        # @attendee = Attendee.create(attendee_params)
        # if @attendee.valid?
        #     redirect_to show_path(Show.first.id)
        # else
        #     flash[:errors] = @attendee.errors.full_messages
        #     redirect_to new_attendee_path
        # end
        @attendee = Attendee.find_or_create_by(uid: auth['uid']) do |a|
            a.name = auth['info']['name']
        end
        session[:attendee_id] = @attendee.id
        render 'attendees/new'
    end

    def destroy
        session.delete :attendee_id
        redirect_to '/'
    end

    private

    def auth
        request.env['omniauth.auth']
    end

    def attendee_params
        params.require(:attendee).permit(:name)
    end

end
