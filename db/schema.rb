# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161203005605) do

  create_table "albums", force: :cascade do |t|
    t.integer  "artist_id",  null: false
    t.integer  "genre_id",   null: false
    t.string   "name",       null: false
    t.integer  "year",       null: false
    t.integer  "tracks",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "albums", ["artist_id"], name: "index_albums_on_artist_id"
  add_index "albums", ["genre_id"], name: "index_albums_on_genre_id"

  create_table "artists", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "year",       null: false
    t.string   "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "artists", ["name"], name: "index_artists_on_name", unique: true

  create_table "genres", force: :cascade do |t|
    t.string   "genre",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "genres", ["genre"], name: "index_genres_on_genre", unique: true

end
