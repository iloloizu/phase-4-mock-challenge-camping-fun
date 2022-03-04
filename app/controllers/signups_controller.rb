class SignupsController < ApplicationController
    def create
        new_signup = Signup.create!(sign_params)
        render json: new_signup.activity, status: :created
    end

    private

    def sign_params
        params.permit(:time, :activity_id, :camper_id)
    end
end
