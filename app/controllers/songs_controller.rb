class SongsController < ApplicationController
  before_action :findSong

  def show

  end

  private

  def findSong
    @song = Song.find(params[:id])
  end
end
