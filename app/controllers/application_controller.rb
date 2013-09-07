class ApplicationController < ActionController::Base
  protect_from_forgery
  def authenticate
  	redirect_to new_user_session_path, alert: "nie masz uprawnien! ZALOGUJ SIE" unless current_user
  end
end
