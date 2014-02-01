class PagesController < ApplicationController
  def index
    @playlists = playlists
  end

  private

  def playlists
    Playlist.limit(2).all
  end
end
