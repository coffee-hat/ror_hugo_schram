class ArtistsSong < ApplicationRecord
  belongs_to :artists_id
  belongs_to :songs_id
end
