class VideosController < ApplicationController
  def show
    @comment = Comment.new
    @resource = Video.find(params[:id])
    @url_id = @resource.url.split("?v=")[1]
  end
end
