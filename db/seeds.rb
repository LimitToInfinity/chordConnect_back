# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Address.destroy_all
Agent.destroy_all
ArtistAgent.destroy_all
ArtistVenue.destroy_all
Artist.destroy_all
VenueAddress.destroy_all
Venue.destroy_all

artist1 = Artist.create({band_name: "Rock All the Time"})

agent1 = Agent.create({company_name: "We Represent"})

venue1 = Venue.create({name: "Showcase", description: "Where the music happens"})

address1 = Address.create({street_1: "123 Wherever St.", street_2: "B23", stage: "1", 
                city: "Denver", state: "CO", zip: "80000"})

ArtistAgent.create({artist: artist1, agent: agent1})

ArtistVenue.create({artist: artist1, venue: venue1})

VenueAddress.create({venue: venue1, address: address1})