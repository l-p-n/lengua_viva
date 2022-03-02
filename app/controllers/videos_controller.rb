class VideosController < ApplicationController
  def show
    @resource_show_page = true
    @comment = Comment.new
    @resource = Resource.find(params[:id])
    @url_id = @resource.url.split("?v=")[1]
  end
end
