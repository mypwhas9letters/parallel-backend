class Api::V1::ReservationsController < ApplicationController

  def index
    if current_user
    @reservations = current_user.reservations
    @trips = current_user.trips
    if(@reservations)
      render json: @reservations, status: 200
    else
      render json: { message: "No Reservations"}
    end
    end
  end

  def trips
    if current_user
    @trips = current_user.trips
    if(@trips)
      render json: @trips, status: 200
    else
      render json: { message: "No Trips"}
    end
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

  def update
    res = Reservation.find(params[:id])
    if res
      res.update(status: params[:status])
      render json:res
  end

end




end
