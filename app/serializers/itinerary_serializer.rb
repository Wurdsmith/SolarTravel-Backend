class ItinerarySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :destinations
end
