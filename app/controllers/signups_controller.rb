class SignupsController < ApplicationController

        def index
            @signups = Signup.all
        end

        def new
            @signup = Signup.new
            # @campers = Camper.all
            # @activities = Activity.all
        end

        def create
            signup_params = params.require(:signup).permit(:camper_id, :activity_id)
            @signup = Signup.create(signup_params)
            redirect_to camper_path(@signup.camper_id)
        end
end
