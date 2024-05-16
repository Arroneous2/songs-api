class SongsController < ApplicationController
  def index
    @songs = Song.all
    render template: 'songs/'
  end
end
