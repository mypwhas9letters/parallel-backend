class Api::V1::ParkingSpotsController < ApplicationController
  include Geokit::Geocoders

  def index
    @parking_spots = ParkingSpot.all
    render json: @parking_spots, status: 200
  end


  def filter_by_zip
    @parking_spots_by_zip = ParkingSpot.within(params[:distance], :origin =>params[:zip]).all
    render json: @parking_spots_by_zip, status: 200
  end


  def create
    address = ("#{params[:address]}, #{params[:city]}, #{params[:state]} #{params[:zip]}")
     res = MultiGeocoder.geocode(address)
    @parking_spot = ParkingSpot.new(title: params[:title], address: params[:address], city: params[:city], state: params[:state], zip: params[:zip], description: params[:description], owner_id: params[:owner_id], photo: params[:photo], price: params[:price], lat: res.lat, lng: res.lng)
    if @parking_spot.save
      render json: @parking_spot, status: 200
    else
      render json: { message: "Error"}
    end
  end

  def show
    parking_spot = ParkingSpot.find(params[:id])
    render json: {parkingSpot: parking_spot, reviews: parking_spot.reviews, unavailableDates: parking_spot.reservations}
  end

#   def update
#     space = ParkingSpot.find_by(params[:id])
#     if space
#       space.update(status: params[:status])
#       render json:space
#   end
# end


end
