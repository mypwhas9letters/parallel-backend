class ParkingSpot < ApplicationRecord
  acts_as_mappable

  belongs_to :owner, :class_name => "User"
  has_many :reservations
  has_many :reviews
  has_many :guests, :class_name => "User", :through => :reservations
  has_many :unavailable_dates
end
