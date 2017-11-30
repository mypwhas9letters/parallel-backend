class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def create
    user = User.new(username: params[:username], password: params[:password], email: params[:email])
    if user.save
      token = encode_token({ user_id: user.id})
      render json: {user: user, jwt: token}
    else
      render json: { message: "Error"}
    end
  end

  def me
    if current_user
      render json: { user: @user, parkingSpots: @user.parking_spots, reservations: @user.reservations, trips: @user.trips}
    else
      render json: { message: "Test"}
    end
  end

end
