class ApplicationController < ActionController::Base
  protect_from_forgery
  # include SessionsHelper
	before_filter :authorize_user

	protected
	def authorize_user
		return true if current_user.nil?
		session.clear
		redirect_to root_path
		false
	end

  private

	def current_user
	  @current_user ||= User.find_by_id(session[:user_id])
	end
	helper_method :current_user

	def authorize
	  redirect_to login_url, alert: "Not authorized" if current_user.nil?
	end
end
