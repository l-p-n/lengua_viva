class PodcastsController < ApplicationController
  def show
    @resource_show_page = true
    @comment = Comment.new
    @resource = Resource.find(params[:id])
    @like = Like.find_by(user: current_user, resource: @resource)
  end
end
