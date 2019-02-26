class ChatroomsController < ApplicationController
    # :index, :create, :show, :update, :destroy
    before_action :find_chatroom, only: [:show, :update, :destroy]
    def index
    end

    def create
    end

    def show
    end

    def update
    end

    def destroy
    end

    private
    def chatrooms_params
        params.require(:chatroom).permit(:title)
    end

    def find_chatroom
        @chatroom = Chatroom.find(params[:id])
    end
end
