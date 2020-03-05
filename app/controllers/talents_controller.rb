class TalentsController < ApplicationController
    before_action :find_talent, only: [:show, :edit, :update, :destroy]
    before_action :boot_out


    def index
        @talents = Talent.all
    end

    def show
    end

    def new
        @talent = Talent.new
    end

    def create
        @talent = Talent.create(talent_params)
        
        redirect_to talent_path(@talent)
    end

    def edit
    end

    def update
        @talent.update(talent_params)

        redirect_to talent_path(@talent)
    end

    def destroy
        @talent.destroy
        redirect_to talents_path
    end

    private

    def talent_params
        params.require(:talent).permit(:name, :description, user_ids: [])
    end

    def find_talent
        @talent = Talent.find(params[:id])
    end

end
