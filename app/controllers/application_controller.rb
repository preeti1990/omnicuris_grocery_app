class ApplicationController < ActionController::API
  respond_to :json
  def authenticate_user
    current_user = User.find_by_auth_token(auth_token: params[:auth_token])
  end

  def current_user
    @current_user ||= User.find(doorkeeper_token[:resource_owner_id])
  end
end
