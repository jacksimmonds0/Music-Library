json.extract! artist, :id, :name, :year, :label, :created_at, :updated_at
json.url artist_url(artist, format: :json)