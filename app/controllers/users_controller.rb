class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      render :show, status: :created
    else
      render :errors, status: 400
    end
  end

  private

  def user_params
    params.permit(:email, :password)
  end

end
