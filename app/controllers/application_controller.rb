class ApplicationController < ActionController::Base

    helper_method :current_user

    def index
    end

    def analytics
    end

    def current_user
        if session[:user_id]
            @current_user ||= User.find(session[:user_id]).drag_name
        else
            @current_user = “Guest”
        end
        return @current_user
    end
    
end
