require 'test_helper'

class SongTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
  	@album = albums(:one)
  end

  test 'save invalid song with no name or duration' do
  	song = Song.new

  	song.save
  	refute song.valid?
  end

  test 'save valid song' do
  	song = Song.new

  	song.name = "Song"
  	song.duration = "4:20"
  	song.album = @album

  	song.save
  	assert song.valid?
  end

  test 'testing the duration regex incorrect seconds' do
  	song = Song.new

  	song.name = "Song"
  	song.duration = "1:61"
  	song.album = @album

  	song.save
  	refute song.valid?
  end

  test 'testing the duration regex incorrect minutes' do
  	song = Song.new

  	song.name = "Song"
  	song.duration = "61:59"
  	song.album = @album

  	song.save
  	refute song.valid?
  end

end
