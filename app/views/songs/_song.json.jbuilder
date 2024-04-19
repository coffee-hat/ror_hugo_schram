json.extract! song, :id, :title, :thumbnail_url, :lyrics, :created_at, :updated_at
json.url song_url(song, format: :json)
