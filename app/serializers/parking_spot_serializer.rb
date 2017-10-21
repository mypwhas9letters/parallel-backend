class ParkingSpotSerializer < ActiveModel::Serializer
  attributes :title, :address, :city, :state, :zip, :description, :owner_id, :photo, :price, :id

  belongs_to :owner
  has_many :unavailable_dates

end
