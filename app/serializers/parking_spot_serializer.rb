class ParkingSpotSerializer < ActiveModel::Serializer
  attributes :title, :address, :city, :state, :zip, :description, :owner_id, :photo, :price
  
  belongs_to :owner

end
