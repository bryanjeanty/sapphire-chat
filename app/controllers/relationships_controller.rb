class RelationshipsController < ApplicationController
  def create
    @other_user = User.find(params[:following_id])
    @relationship = Relationship.new(relationships_params)
    @relationship.save
    redirect_to user_path(@other_user)
  end

  def destroy
    @other_user = User.find(params[:following_id])
    @relationship = Relationship.find_by(
      follower_id: params[:follower_id],
      following_id: params[:following_id]
      )
    @relationship.destroy
    redirect_to user_path(@other_user)
  end

  private
  def relationships_params
    params.require(:relationship).permit(:follower_id,:following_id)
  end
end
