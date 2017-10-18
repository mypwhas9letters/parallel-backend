class User < ApplicationRecord
  has_secure_password

  has_many :parking_spots, :foreign_key => 'owner_id'
  has_many :reservations, :through => :parking_spots
  has_many :trips, :foreign_key => 'guest_id', :class_name =>'Reservation'
  has_many :reviews, :foreign_key => 'guest_id'

  ## As a guest
  has_many :trip_listings, :through => :trips, :source => :parking_spot
  has_many :hosts, :through => :trip_listings, :foreign_key => :host_id
  
  ## As a host
  has_many :guests, :through => :reservations, :class_name => "User"
  has_many :host_reviews, :through => :parking_spots, :source => :reviews
end
