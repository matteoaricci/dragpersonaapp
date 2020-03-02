class HousesController < ApplicationController

    before_action :find_house, only: [:show, :edit, :update]

    def index
        @houses = House.all
    end

    def show
    end

    def new
        @house = House.new
    end

    def create
        @house = House.create(house_params)

        redirect_to house_path(@house)
    end

    private

    def house_params
        params.require(:house).permit(:name, :description, :mother, user_ids: [])
    end
end
