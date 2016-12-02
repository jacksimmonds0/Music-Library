class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.integer :year, null: false
      t.string :label

      t.timestamps null: false
    end
  end
end
