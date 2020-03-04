class ApplicationController < ActionController::Base

    helper_method :current_user

    def index
    end

    def analytics
    end

    def current_user
        if session[:user_id]
            @current_user ||= User.find(session[:user_id])
        else
            @current_user = nil
        end
        return @current_user
    end
    
    def admin
        flash[:login_warning] = "Learn Your Place Sweaty"
        redirect_to users_path unless current_user.admin == 3
    end

    def authorized
        flash[:login_warning] = "You must be logged in to see this page Sweaty"
        redirect_to login_path unless logged_in?
    end

    def logged_in?
        !!current_user
    end
    
end
