require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
  	@artist = artists(:one)
  	@genre = genres(:one)
  end

  test 'should not save empty album' do
  	album = Album.new

  	album.save
  	refute album.valid?
  end

  test 'should save valid album' do
  	album = Album.new

  	album.artist = @artist
  	album.genre = @genre
  	album.name = "Album"
  	album.year = 2016
  	album.tracks = 12
  	
  	album.save
  	assert album.valid?
  end

end
