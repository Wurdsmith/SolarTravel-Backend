class DestinationSerializer < ActiveModel::Serializer
    attributes :id, :name, :distance, :gravity, :temperature, :object_type, :image_url, :itinerary_id
    belongs_to :itinerary
  end