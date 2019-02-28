class RelationshipsController < ApplicationController
  def create
    @other_user = User.find(params[:followed_id])
    @relationship = Relationship.new(
      follower_id: params[:relationship][:follower_id].to_i,
      followed_id: params[:relationship][:followed_id].to_i
      )
    @relationship.save
    redirect_to user_path(@other_user)
  end

  def destroy
    @other_user = User.find(params[:followed_id])
    @relationship = Relationship.find_by(
      follower_id: params[:follower_id],
      followed_id: params[:followed_id]
      )
    @relationship.destroy
    redirect_to user_path(@other_user)
  end
end
