class VideosController < ApplicationController
  def show
    @video = Video.find(params[:id])
    @url_id = @video.url.split("?v=")[1]
  end
end
