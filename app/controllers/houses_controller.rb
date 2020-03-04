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
        @house.update(mother: current_user.username)
        if current_user.admin < 3
        current_user.update(admin: 2, house_id: @house.id)
        elsif current_user.admin == 3
            current_user.update(house_id: @house.id)
        end
        redirect_to house_path(@house)
    end

    def destroy
        @house.destroy
        redirect_to houses_path
    end

    private

    def house_params
        params.require(:house).permit(:name, :description)
    end

    def find_house
        @house = House.find(params[:id])
    end
end
