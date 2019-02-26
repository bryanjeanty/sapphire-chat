class MessagesController < ApplicationController
    def create
        @chatroom = Chatroom.find(params[:chatroom_id])
        @message = @chatroom.messages.new(chatroom_messages_params)
        @message.save
        respond_to do |format|
            format.html { render 'chatrooms/show' }
            format.js { render 'messages/create' }
        end
    end

    private
    def chatroom_messages_params
        params.require(:message).permit(:content, :user_id)
    end
end