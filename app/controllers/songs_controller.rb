class SongsController < ApplicationController
  before_action :find_song

  def show

  end

  private

  def find_song
    @song = Song.find(params[:id])
  end
end
