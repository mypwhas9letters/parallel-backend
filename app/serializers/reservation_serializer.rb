class ReservationSerializer < ActiveModel::Serializer
  attributes :date, :guest_id, :parking_spot_id, :status, :id

  belongs_to :parking_spot
  belongs_to :guest, :class_name => "User"
end
