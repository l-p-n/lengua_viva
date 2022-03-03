class LikesController < ApplicationController
  def create
    @like = Like.new
    @resource = Resource.find(params[:resource_id])
    @like.user = current_user
    @like.resource = @resource
    @like.save
    redirect_to @like.resource
  end

  def destroy
    @like = Like.find(params[:id])
    @resource = @like.resource
    @like.destroy
    redirect_to @resource
  end
end
