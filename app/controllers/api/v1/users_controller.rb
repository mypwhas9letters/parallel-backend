class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users, status: 200
  end

  def create
    @user = User.create(user_params)
    render json: @user, status: 201
  end

  private
  def user
    params.permit(:body)
  end


end
