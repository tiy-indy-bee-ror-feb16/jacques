class UsersController < ApplicationController
  before_filter :check_for_existing_user, only: [:create]

  def create
    @user = User.new(user_params)
    if @user.save
      render :show, status: :created
    else
      render :errors, status: 400
    end
  end

  private

  def check_for_existing_user
    if user_exists?
      if @user.authenticate(params[:password])
        @user.update_attribute(:api_token, @user.generate_api_token)
        render :show
      else
        @user.errors.add(:password, "incorrect")
        render :errors, status: 400
      end
    end
  end

  def user_params
    params.permit(:email, :password)
  end

end
