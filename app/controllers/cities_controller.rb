class CitiesController < ApplicationController

    before_action :find_city, only: [:show, :edit, :update]
    before_action :admin, only: [:edit, :update]
    before_action :boot_out

    def index
        @cities = City.all
    end

    def show
    end

    def edit
    end

    def update
        @city.update(city_params)
        redirect_to city_path(@city)
    end

    def new
        @city = City.new
    end

    def create
        @city = City.new(city_params)
        if @city.valid?
            @city.save
            redirect_to city_path(@city)
        else
            render new_city_path
        end
    end

    private
    def find_city
        @city = City.find(params[:id])
    end

    def city_params
        params.require(:city).permit(:name, user_ids: [])
    end
end