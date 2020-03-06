class MessagesController < ApplicationController

    before_action :find_message, only: [:show]

    def index
        @messages = Message.all.select { |msg| msg.recipient_id == current_user.id }
        if @messages.length > 4
            @messages = @messages[-4..-1]
        end
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
            redirect_to sent_show_path(@message)
        else
            render new_message_path
        end
    end

    def inbox
        @messages = Message.all.select { |msg| msg.recipient_id == current_user.id }
        @sent = Message.all.select { |msg| msg.sender_id == current_user.id }
    end

    def sent
        @sent = Message.all.select { |msg| msg.sender_id == current_user.id }
        if @sent.length > 4
            @sent = @sent[-4..-1]
        end
    end

    def sent_show
        @sent = Message.find(params[:id])
        @recipient = User.find_by(id: @sent.recipient_id)
    end


    private

    def find_message
        @message = Message.find(params[:id])
    end

    def message_params
        params.require(:message).permit(:recipient_id, :subject, :body)
    end

end
