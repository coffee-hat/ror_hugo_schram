json.extract! artist, :id, :name, :description, :thumbnail_url, :created_at, :updated_at
json.url artist_url(artist, format: :json)
