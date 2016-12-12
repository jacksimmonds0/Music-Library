class RemoveTracksFromAlbums < ActiveRecord::Migration
  def change
  	remove_column :albums, :tracks
  end
end
