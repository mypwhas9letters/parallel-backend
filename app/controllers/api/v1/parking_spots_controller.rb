class Api::V1::ParkingSpotsController < ApplicationController
  def index
    @parking_spots = ParkingSpot.all
    render json: @parking_spots, status: 200
  end

  def create
    @parking_spot = ParkingSpot.create(parking_spot_params)
    render json: @parking_spot, status: 201
  end

  private
  def parking_spot
    params.permit(:body)
  end


end
