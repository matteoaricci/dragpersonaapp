class ApplicationController < ActionController::Base

    before_action :boot_out, only: [:analytics]

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
            flash[:notice] = "Learn Your Place Sweaty"
            redirect_to login_path
        end
    end

    def join
        @mothers = User.where('admin >= 2')
        @mother = @mothers.select { |user| user.house_id == params[:id].to_i}
        @house = House.find(params[:id])
        @message = Message.create(recipient_id: @mother[0].id, sender_id: current_user.id,
            subject:"Request to Join", body: "#{current_user.name} has sent a request to join
            your house.")
        flash[:notice] = "Your request has been sent."
        redirect_to houses_path
    end

    def reject
        @message = Message.find(params[:id].to_i)
        @sender = User.find_by(id: @message.sender_id)
        @recipient = User.find_by(id: @message.recipient_id)

        @message = Message.create(recipient_id: @sender.id, sender_id: @recipient.id,
        subject:"Request Denied", body: "#{@recipient.name} denied your request to join
        their house.")

        flash[:notice] = "You successfully rejected the request."
        redirect_to messages_path
    end

    def accept
        @message = Message.find(params[:id].to_i)
        @sender = User.find_by(id: @message.sender_id)
        @recipient = User.find_by(id: @message.recipient_id)

        @sender.house_id = @recipient.house_id

        @message = Message.create(recipient_id: @sender.id, sender_id: @recipient.id,
        subject:"Request Accepted", body: "#{@recipient.name} accepted your request to join
        their house.")

        flash[:notice] = "You successfully accepted the request."
        redirect_to messages_path
    end
    
end