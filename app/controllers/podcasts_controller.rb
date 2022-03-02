class PodcastsController < ApplicationController
  before_action :find_podcast, only: [:show]

  def show
    @comment = Comment.new
    @resource = Resource.find(params[:id])
  end

  private

  def find_podcast
    @podcast = Podcast.find(params[:id])
  end
end
