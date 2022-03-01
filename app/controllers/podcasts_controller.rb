class PodcastsController < ApplicationController
  before_action :find_podcast, only: [:show]

  def show
    @comment = Comment.new
  end

  private

  def find_podcast
    @podcast = Podcast.find(params[:id])
  end
end
