class UsersController < ApplicationController

  def new
    @user = User.new
  end
  
  def create
    
    new_user = User.new :name => params[:user]["name"], 
                        :username => params[:user]["username"],
                        :password => params[:user]["password"], 
                        :password_confirmation => params[:user]["password_confirmation"]
    
    new_user.save
    
    # session[:user_id] = new_user.id
  
    redirect_to users_url
    
  end
  
  def user
    
    @main_menu = [ "Unread", "Read", "Later", "Trash", "New" ]
    
    @user = User.find_by_id(params[:id])
    
  end
  
  def index

    @users = User.all

  end
  
  def show
    @user = User.find_by_id(params[:id])
    
    # @user_messages = Message.find_all_by_user_name(params[:username])
    
#add migration to Message model to add :username and then try the above instead of the below
    # 
    @user_messages = Message.find_all_by_user_id(params[:id])
    
    # @user_messages = Message.find_all_by_to(params[:name])    
      
  end
  
  def edit
    @user = User.find_by_id(params[:id])
  end
  
  def update
    
    @user = User.find_by_id(params[:id])
    @user.name = params[:user][:name]
    @user.username = params[:user][:username]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
   
    @user.save
    
    redirect_to users_url
    
  end
  
  def delete
    
    @user = User.find_by_id(params[:id])
    @user.destroy
    redirect_to users_url
    
  end
  
end
