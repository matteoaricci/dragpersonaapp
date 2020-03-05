class ApplicationController < ActionController::Base

    helper_method :current_user
    helper_method :logged_in

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
        @current_user
    end

    def admin
        current_user.admin == 3
    end

    def mother
        current_user.admin >= 2
    end
    
    def is_admin
        flash[:login_warning] = "Learn Your Place Sweaty"
        redirect_to users_path unless current_user.admin == 3
    end

    # def authorized
    #     flash[:login_warning] = "You must be logged in to see this page Sweaty"
    #     redirect_to login_path unless logged_in?
    # end

    def logged_in
        !!current_user
    end

    def boot_out
        if logged_in == false
            flash[:notice] = "You must be logged in."
            redirect_to login_path
        end
    end
    
end