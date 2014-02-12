class PagesController < ApplicationController
  def index
    @playlists = playlists
    @images    = Image.all
    @stories   = Story.all
    @about     = About.order('id DESC').first
    @thanks    = Thank.order('id DESC').first
  end

  private

  def playlists
    Playlist.limit(2).all
  end
end
