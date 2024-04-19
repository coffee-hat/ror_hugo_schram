class Metric < ApplicationRecord
    belongs_to :song

    validates :song_id, uniqueness: { message: "can only have one metric by song" }
end
