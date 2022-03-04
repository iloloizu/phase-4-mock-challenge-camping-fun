class CampersController < ApplicationController
    def index
        render json: Camper.all
    end

    def show
        show_camper = find_campers
        render json: show_camper, status: :ok, serializer: CamperdetailserializerSerializer
    end

    def create
        camper = Camper.create!(camper_params)
        render json: camper, status: :created
    end    

    private

    def camper_params
        params.permit(:name, :age)
    end

    def find_campers
        Camper.find(params[:id])
    end

end
