class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]
    before_action :is_current_user, only: [:edit, :update, :destroy]
    before_action :boot_out, except: [:new, :create]

    
    def index
        @users = User.all.order(params[:talents])
    end

    def show
    end
    
    def edit
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
        @user.update(city_id: params[:city_id].to_i)
        if @user.valid?
            @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render new_user_path
        end
    end

    def destroy
        @user.destroy
        session.clear
        redirect_to users_path
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :name, :drag_name, :city_id, :house_id, talent_ids: [])
    end

    def find_user
        @user = User.find(params[:id])
    end

    def is_current_user
        if @user.id != current_user.id
            flash[:notice] = "You shady bitch"
            render :show
        end
    end
end
