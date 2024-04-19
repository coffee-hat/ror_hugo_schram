class Song < ApplicationRecord
    #has_and_belongs_to_many :artist
    has_many :artists_songs, dependent: :destroy
    has_many :artists, through: :artists_song
    belongs_to :album
    has_one :metric, dependent: :destroy
end
