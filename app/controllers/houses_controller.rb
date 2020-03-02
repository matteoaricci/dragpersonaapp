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
        @house = House.new(house_params)
        if @house.valid?
            @house.save
            redirect_to house_path(@house)
        else
            render new_house_path
        end
    end

    def edit
    end

    def update
        @house.update(house_params)
        redirect_to house_path(@house)
    end

    private
    def find_house
        @house = House.find(params[:id])
    end

    def house_params
        params.require(:house).permit(:name, :description)
    end
end
