class Album < ApplicationRecord
    has_many :song, dependent: :destroy
end
