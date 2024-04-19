class Artist < ApplicationRecord
    #has_and_belongs_to_many :song
    has_many :artists_songs, dependent: :destroy
    has_many :songs, through: :artists_song
end
