class ParkingSpot < ApplicationRecord
  belongs_to :owner, :class_name => "User"
  has_many :reservations
  has_many :reviews
  has_many :guests, :class_name => "User", :through => :reservations

end
