class EditorsController < ApplicationController
    def create
        @chatroom = Chatroom.find(params[:chatroom_id])
        @editor = @chatroom.editors.new(content: params[:editor][:content])
        @editor.user = current_user
        @editor.save
        redirect_to chatroom_path(@chatroom)
    end
end
