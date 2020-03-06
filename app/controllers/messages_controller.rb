class MessagesController < ApplicationController

    before_action :find_message, only: [:show]

    def index
        @messages = Message.all.select { |msg| msg.recipient_id == current_user.id }
    end

    def show
        @sender = User.find_by(id: @message.sender_id)
    end

    def new
        @message = Message.new
    end

    def create
        @message = Message.new(message_params)
        if @message.valid?
            @message.sender_id = current_user.id
            @message.save
            redirect_to message_path(@message)
        else
            render new_message_path
        end
    end


    private

    def find_message
        @message = Message.find(params[:id])
    end

    def message_params
        params.require(:message).permit(:recipient_id, :subject, :body)
    end

end
