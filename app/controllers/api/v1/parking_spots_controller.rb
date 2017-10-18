class Api::V1::ParkingSpotsController < ApplicationController
  def index
    @parking_spots = ParkingSpot.all
    render json: @parking_spots, status: 200
  end

  def create
    @parking_spot = ParkingSpot.new(title: params[:title], address: params[:address], city: params[:city], state: params[:state], zip: params[:zip], description: params[:description], owner_id: params[:owner_id], photo: params[:photo], price: params[:price])
    if @parking_spot.save
      render json: @parking_spot, status: 200
    else
      render json: { message: "Error"}
    end
  end

  def show
    parking_spot = ParkingSpot.find(params[:id])
    render json: {parkingSpot: parking_spot, reviews: parking_spot.reviews}

  end

end
