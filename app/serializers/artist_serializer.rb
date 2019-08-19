class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :band_name, :venues, :agents
end
