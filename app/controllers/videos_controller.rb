class VideosController < ApplicationController
  def show
    @resource_show_page = true
    @comment = Comment.new
    @resource = Resource.find(params[:id])
    @like = Like.where(user: current_user, resource: @resource)
  end
end
