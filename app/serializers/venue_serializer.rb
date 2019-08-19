class VenueSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :addresses
end
