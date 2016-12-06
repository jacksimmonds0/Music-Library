class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.belongs_to :album, index: true, foreign_key: true
      t.string :name, null: false
      t.string :duration, null: false

      t.timestamps null: false
    end
  end
end
