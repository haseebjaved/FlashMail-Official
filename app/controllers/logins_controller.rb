class LoginsController < ApplicationController
  
  def new
    
  end

  def create
    
    user = User.find_by_username(params[:username])
    logger.debug "============#{user}"

    if user
      if user.authenticate(params[:password])
        session[:login_id] = user.id
        redirect_to user_url(user.id), notice: "Welcome back, #{user.name.split(' ').first}"
      else
        redirect_to new_login_url, flash[:notice] = "Invalid password"
      end
    else
         redirect_to new_login_url, flash[:notice] = "Invalid Username"
    end
    
  end

  def destroy
    reset_session
    redirect_to new_login_url,  notice: "See ya!"
  end

end
