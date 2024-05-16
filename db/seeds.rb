# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

song = Song.new(title: "Jazz", album: "JazzAlbum", artist: "JazzArtist", year: 1988)
song.save
song = Song.new(title: "Metal", album: "MetalAlbum", artist: "MetalArtist", year: 1988)
song.save
song = Song.new(title: "PostRock", album: "PostRockAlbum", artist: "PostRockArtist", year: 1988)
song.save
song = Song.new(title: "NewWave", album: "NewWaveAlbum", artist: "NewWaveArtist", year: 1988)
song.save
