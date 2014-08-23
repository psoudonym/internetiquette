class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_admin!
    unless current_user.try(:admin?).present?
      flash[:notice] = 'Pardon us, but we don\'t believe you should be going there'
      redirect_to root_path and return false
    end
  end
end
