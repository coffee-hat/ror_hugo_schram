json.extract! album, :id, :title, :description, :thumbnail_url, :created_at, :updated_at
json.url album_url(album, format: :json)
