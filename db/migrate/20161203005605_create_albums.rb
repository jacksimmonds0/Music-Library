class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.belongs_to :artist, index: true, foreign_key: true, null: false
      t.belongs_to :genre, index: true, foreign_key: true, null: false
      t.string :name, null: false
      t.integer :year, null: false
      t.integer :tracks

      t.timestamps null: false
    end
  end
end
