class Song < ApplicationRecord
    has_and_belongs_to_many :artist
    belongs_to :album
    has_one :metric, dependent: :destroy
end
