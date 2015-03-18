class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from SecurityError, with: :not_authorized

  def authenticate_admin_user!
    raise SecurityError unless current_user.admin == true
  end

  def not_authorized
    redirect_to root_path, notice: 'Not Authorized! Only Admins Can Access.'
  end
end
