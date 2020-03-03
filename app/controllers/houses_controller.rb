class HousesController < ApplicationController

    before_action :find_house, only: [:show, :edit, :update, :destroy]

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

    def destroy
        @house.destroy
        redirect_to houses_path
    end

    private

    def house_params
        params.require(:house).permit(:name, :description, :mother, user_ids: [])
    end

    def find_house
        @house = House.find(params[:id])
    end
end
