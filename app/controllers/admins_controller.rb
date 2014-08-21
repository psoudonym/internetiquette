class AdminsController < ApplicationController
  protect_from_forgery
  before_filter :auth

  layout 'admin'

  def show
    redirect_to editor_brands_path
  end

  protected

  def auth
    authenticate_or_request_with_http_basic do |username, password|
      username == "dowager" && password == "j*[%vE?4H!.?rOw"
    end
  end

end
