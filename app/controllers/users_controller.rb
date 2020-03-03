class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]
    
    def index
        @users = User.all.order(params[:talents])
    end

    def show
    end
    
    def edit
        @user.build_house
    end
    
    def update
        @user.update(user_params)

        redirect_to user_path(@user)
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            redirect_to user_path(@user)
        else
            render new_user_path
        end
    end

    def destroy
        @user.destroy
        redirect_to users_path
    end

    private

    def user_params
        params.require(:user).permit(:name, :drag_name, :city_id, :house_id, talent_ids: [], house_attributes: [:name, :description])
    end

    def find_user
        @user = User.find(params[:id])
    end

end
