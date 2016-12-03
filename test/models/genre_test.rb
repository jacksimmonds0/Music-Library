require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'invalid genre no genre name' do
  	genre = Genre.new

  	genre.save
  	refute genre.valid?
  end

  test 'save valid genre' do
  	genre = Genre.new

  	genre.genre = "Pop"

  	genre.save
  	assert genre.valid?
  end
end
