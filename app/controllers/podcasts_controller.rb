class PodcastsController < ApplicationController
  def show
    @word = Word.new
    @resource_show_page = true
    @comment = Comment.new
    @review = Review.new
    @resource = Resource.find(params[:id])
    View.create(user: current_user, resource: @resource)
    @related_resources = Resource.tagged_with(@resource.tags, wild: true, any: true)
    @like = Like.find_by(user: current_user, resource: @resource)
    @bookmark = Bookmark.find_by(user: current_user, resource: @resource)
  end
end
