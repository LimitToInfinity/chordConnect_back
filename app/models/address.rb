class Address < ApplicationRecord
    has_many :venue_addresses
    has_many :venues, through: :venue_addresses
end