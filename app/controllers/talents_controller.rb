class TalentsController < ApplicationController

    def index
        @talents = Talent.all
    end

    def show
        @talent = Talent.find(params[:id])
    end

    def new
        @talent = Talent.new
    end

    def create
        @talent = Talent.create(talent_params)
        
        redirect_to talent_path(@talent)
    end

    private

    def talent_params
        params.require(:talent).permit(:name, :description)
    end
end
