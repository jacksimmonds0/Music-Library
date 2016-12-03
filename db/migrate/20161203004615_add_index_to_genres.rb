class AddIndexToGenres < ActiveRecord::Migration
  def change
  	add_index :genres, :genre, unique: true
  end
end
