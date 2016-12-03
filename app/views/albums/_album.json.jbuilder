json.extract! album, :id, :artist_id, :genre_id, :name, :year, :tracks, :created_at, :updated_at
json.url album_url(album, format: :json)