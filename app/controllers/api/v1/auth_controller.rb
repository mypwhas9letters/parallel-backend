class Api::V1::AuthController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      token = encode_token({ user_id: user.id})
      render json: { user: user, jwt: token, parkingSpots: user.parking_spots, reservations: user.reservations, trips: user.trips, success: "Logged In"}
    else
      render json: { message: "Invalid Username/Password"}
    end
  end

end
