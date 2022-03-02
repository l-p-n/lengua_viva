class VideosController < ApplicationController
  def show
    @comment = Comment.new
    @resource = Video.find(params[:id])
    @like = Like.where(user: current_user, resource: @resource)
  end
end
