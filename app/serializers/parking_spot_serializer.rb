class ParkingSpotSerializer < ActiveModel::Serializer
  attributes :title, :address, :city, :state, :zip, :description, :owner_id, :photo, :price, :id
end
