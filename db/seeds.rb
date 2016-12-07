# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
artist = Artist.new
artist.name = "Artist"
artist.year = 2016

genre = Genre.new
genre.genre = "Genre"

default = Album.where(name: 'Default Album').first
album.delete if default

albums = Album.create([artist: artist, genre: genre, name: 'Default Album', year: 2016, tracks: 10])
=end