class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  before_action :require_signin
  
  private

  def current_user
    @current_user ||= User.find_by(id: session[:user])
  end

  def require_signin
    unless current_user
      redirect_to signin_path
    end
  end

end
