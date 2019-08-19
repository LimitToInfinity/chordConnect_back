class Artist < ApplicationRecord
    has_many :artist_venues
    has_many :venues, through: :artist_venues
    
    has_many :artist_agents
    has_many :agents, through: :artist_agents
    
    has_many :artist_messages
    has_many :messages, through: :artist_messages
end