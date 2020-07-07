class PlansController < ApplicationController

    def index
        if Attendee.last.plans.count == 0
            render 'new'
        else
            @plans = Attendee.last.plans
        end
    end

    def new
        @plan = Plan.new
    end

    def create
        @plan = Plan.create(plan_params)
        if @plan.valid?
            redirect_to plan_path(@plan)
        else
            flash[:errors] = @plan.errors.full_messages
            redirect_to plans_path
        end
    end

    def edit
        @plan = Plan.find(params[:id])
    end

    def update
        @plan = Plan.find(params[:id])
        @plan.update(plan_params)
        redirect_to plan_path(@plan)
    end

    def show
        @plan = Plan.find(params[:id])
    end

    def destroy
        @plan = Plan.find(params[:id])
        @plan.destroy
        redirect_to plans_path
    end

    private

    def plan_params
        params.require(:plan).permit(:attendee_id, :show_id, :location_id)
    end

end
