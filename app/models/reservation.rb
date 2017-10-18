class Reservation < ApplicationRecord
  belongs_to :parking_spot
  belongs_to :guest, :class_name => "User"
end
