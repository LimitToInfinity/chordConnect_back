class Message < ApplicationRecord
    has_many :artist_messages
    has_many :artists, through: :artist_messages
end