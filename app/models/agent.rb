class Agent < ApplicationRecord
    has_many :artist_agents
    has_many :artists, through: :artist_agents
end