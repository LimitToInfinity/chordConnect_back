class Venue < ApplicationRecord
    has_many :artist_venues
    has_many :artists, through: :artist_venues

    has_many :venue_addresses
    has_many :addresses, through: :venue_addresses
end