class ApplicationController < ActionController::API

  def user_exists?
    @user = User.find_by(email: params[:email])
  end

  def authenticate_user
    @user = User.find_by(api_token: params[:api_token])
  end
end
