class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:index, :create, :show , :destroy]
    def index
      @users = User.all
      render json: @users
    end

    def create
      @user = User.create(user_params)
      render json: @user
    end

    def show
      @user = User.find(params[:id])
      render json: @user
    end

    def update
      @user = User.find(params[:id])
      render json: @user
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      @users = User.all
      render json: @users
    end

  private

  def user_params
    params.permit(:username, :email, :password)
  end

end
