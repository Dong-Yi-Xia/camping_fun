class ActivitiesController < ApplicationController

    def index
        @activities = Activity.all
    end

    def show
        @activity = Activity.find(params[:id])
    end

    def new
        @activity = Activity.new
    end

    def create
        activity_parmas = params.require(:activity).permit(:name, :difficulty)
        @activity = Activity.create(activity_parmas)
        redirect_to activity_path(@activity)
    end
    
end
