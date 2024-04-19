class Song < ApplicationRecord
    has_and_belongs_to_many :Artist
    belongs_to :Album
    has_one :Metric
end
