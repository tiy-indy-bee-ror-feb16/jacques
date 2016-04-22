class ApplicationController < ActionController::API

  def user_exists?
    @user = User.find_by(email: params[:email])
  end

end
