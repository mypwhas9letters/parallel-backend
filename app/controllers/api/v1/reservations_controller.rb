class Api::V1::ReservationsController < ApplicationController

  def index
    @reservations = User.find(params[:id]).reservations
    if(@reservations)
      render json: @reservations, status: 200
    else
      render json: { message: "No Reservations"}
    end
  end

  def create
    res = Reservation.new(date: params[:date], guest_id: params[:guest_id], parking_spot_id: params[:parking_spot_id], status: params[:status])
  if res.save
     render json: {reservation: res, message: "Reservations Request Received"}
    else
      render json: { message: "Error"}
    end
  end

end
