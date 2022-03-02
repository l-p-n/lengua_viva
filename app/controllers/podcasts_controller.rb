class PodcastsController < ApplicationController
  def show
    @resource_show_page = true
    @comment = Comment.new
    @review = Review.new
    @resource = Resource.find(params[:id])
  end
end
