class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new
    @resource = Resource.find(params[:resource_id])
    @bookmark.user = current_user
    @bookmark.resource = @resource
    @bookmark.save
    redirect_to @bookmark.resource
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @resource = @bookmark.resource
    @bookmark.destroy
    redirect_to @resource
  end
end
