require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'invalid artist with no name or year' do
  	artist = Artist.new

  	artist.save
  	refute artist.valid?
  end

  test 'invalid artist with no name' do
  	artist = Artist.new

  	artist.year = 2016

  	artist.save
  	refute artist.valid?
  end

  test 'invalid artist with year outside range' do
  	artist = Artist.new

  	artist.name = "Jack Simmonds"
  	artist.year = 1899

  	artist.save
  	refute artist.valid?
  end

  test 'valid artist with name and year' do
  	artist = Artist.new

  	artist.name = "Jack Simmonds"
  	artist.year = 2016

  	artist.save
  	assert artist.valid?
  end
end
