class SongsController < ApplicationController
  def show
    @resource_show_page = true
    @comment = Comment.new
    @review = Review.new
    @resource = Resource.find(params[:id])
    View.create(user: current_user, resource: @resource)

    @related_resources_all = Resource.tagged_with(@resource.tags, wild: true, any: true)
    @related_resources = @related_resources_all.reject { |resource| resource == @resource }
    @related_resources.shuffle!

    @like = Like.find_by(user: current_user, resource: @resource)
    @bookmark = Bookmark.find_by(user: current_user, resource: @resource)

  end
end
