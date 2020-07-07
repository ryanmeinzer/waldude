class PlansController < ApplicationController

    def index
        @plans = Attendee.last.plans
        # if Attendee.last.plans.count == 0
        #     render 'new'
        # else
            # @plans = Attendee.last.plans
        # end
    end

    def new
        @plan = Plan.new
    end

    def create
        @plan = Plan.create(plan_params)
        redirect_to show_location_attendees_path(@show.id, @location.id)
    end

    def edit
        @plan = Plan.find(params[:id])
    end

    def update
        @plan = Plan.find(params[:id])
        @show = @plan.show
        @location = @plan.location
        @plan.update(plan_params)
        redirect_to show_location_attendees_path(@show.id, @location.id)
    end

    def show
        @plan = Plan.find(params[:id])
    end

    private

    def plan_params
        params.require(:plan).permit(:attendee_id, :show_id, :location_id)
    end

end
