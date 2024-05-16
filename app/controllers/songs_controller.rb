class SongsController < ApplicationController
  def index
    @songs = Song.all
    render template: 'songs/index'
  end

  def show
    @song = Song.find(params[:id])
    render template: 'songs/show'
  end

  def create
    @song = Song.new(title: params[:title],
    artist: params[:artist],
    album: params[:album],
    year: params[:year],
    )
    @song.save
    render template: 'songs/show'
  end

  def update
    @song = Song.find(params[:id])
    @song.update(title: params[:title] || @song.title,
    artist: params[:artist] || @song.artist,
    album: params[:album] || @song.album,
    year: params[:year] || @song.year
    )
    render template: 'songs/show'
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    render template: 'songs/show'
  end
end
