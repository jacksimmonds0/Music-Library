class AddIndexToAlbums < ActiveRecord::Migration
  def change
  	add_index :albums, :name, unique: true
  endrail
end
