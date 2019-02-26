class ChatroomsController < ApplicationController
    before_action :find_chatroom, only: [:show, :update, :destroy]
    before_action :authenticate_user!, only: [:index, :show]

    def index
        @chatrooms = Chatroom.all
        @chatroom = Chatroom.new
    end

    def create
        @chatroom = Chatroom.new(chatrooms_params)
        @chatroom.user = current_user
        @chatroom.save
        redirect_to chatrooms_path
    end

    def show
        @messages = @chatroom.messages.all
        @message = @chatroom.messages.new
    end

    def update
        @chatroom.update(chatrooms_params)
        redirect_to chatrooms_path
    end

    def destroy
        @chatroom.destroy
        redirect_to chatrooms_path
    end

    private
    def chatrooms_params
        params.require(:chatroom).permit(:title)
    end

    def find_chatroom
        @chatroom = Chatroom.find(params[:id])
    end
end
