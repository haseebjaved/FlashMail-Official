class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :find_logged_in_user
  before_filter :show_session_data
  
  def show_session_data
    logger.debug "---------------------------"
    logger.debug "Session: #{session.inspect}"
    logger.debug "-" * 50
  end
  
  def find_logged_in_user
    @user = User.find_by_id(session[:login_id])
  end
  
end
