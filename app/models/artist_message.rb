class ArtistMessage < ApplicationRecord
    belongs_to :artist
    belongs_to :message
end