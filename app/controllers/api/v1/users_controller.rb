class Api::V1::UsersController < ApplicationController
  # skip_before_action :authorized, only: [:create]

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



  # def me
  #   if @user
  #     render json: { user: @user, books: @user.books}
  #   else
  #     render json: { message: "Error"}
  #   end
  #
  # end




end
