class LikesController < ApplicationController
  def create
    @like = Like.new
    @resource = Resource.find(params[:resource_id])
    @like.user = current_user
    @like.resource = @resource
    @like.save
    redirect_to @like.resource
  end
end
