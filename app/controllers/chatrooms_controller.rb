class ChatroomsController < ApplicationController
    before_action :find_chatroom, only: [:show, :update, :destroy]
    def index
        @chatrooms = Chatroom.all
        @chatroom = Chatroom.new
    end

    def create
        @chatroom = Chatroom.create(chatrooms_params)
        redirect_to chatrooms_path
    end

    def show
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
