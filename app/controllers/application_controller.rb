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
        current_user.admin == 3
    end

    def mother
        current_user.admin >= 2
    end
    
end
