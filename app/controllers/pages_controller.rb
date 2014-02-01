class PagesController < ApplicationController
  def index
    @playlists = playlists
    @images = Image.all
    @stories = Story.all
  end

  private

  def playlists
    Playlist.limit(2).all
  end
end
