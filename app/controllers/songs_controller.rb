class SongsController < ApplicationController
  before_action :find_song, only: [:show]

  def show
    @comment = Comment.new
  end

  private

  def find_song
    @song = Song.find(params[:id])
  end
end
