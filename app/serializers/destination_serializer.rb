class DestinationSerializer < ActiveModel::Serializer
    attributes :id, :name, :distance, :gravity, :temperature, :object_type, :image_url, :temperature_class, :gravity_class, :distance_class, :itinerary_id
    belongs_to :itinerary
  end