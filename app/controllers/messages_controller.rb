class MessagesController < ApplicationController

    def index
        @messages = Message.all.select { |msg| msg.recipient_id == current_user.id }
    end


end
