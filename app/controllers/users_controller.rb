class UsersController < ApplicationController

  def new
    @user = User.new
  end
  
  def create
    
   @user = User.new(params[:user])
                     # :name => params[:user]["name"], 
                     #                      :username => params[:user]["username"],
                     #                      :password => params[:user]["password"], 
                     #                      :password_confirmation => params[:user]["password_confirmation"]
                          
    if @user.save
      flash[:notice] = "Welcome to FlashMail!"
      
      session[:login_id] = @user.id
      redirect_to user_url(@user.id)
    
    else
      # flash[:alert] = "Missing field!"
      render "new"
    end
  
  end
  
  def user
    
    @main_menu = [ "Unread", "Read", "Later", "Trash", "New" ]
    
    @user = User.find_by_id(params[:id])
    
  end
  
  def index

    @users = User.all

  end
  
  def show
    if session[:login_id].blank?
      redirect_to new_login_url, notice: "Not Logged In"
    else    
      @user = User.find_by_id(session[:login_id])
    
    # @user_messages = Message.find_all_by_user_name(params[:username])
    
#add migration to Message model to add :username and then try the above instead of the below
    # 
    
    #@user_messages = @user.messages        
    #@user_messages = @user.messages.sort_by(&:created_at).reverse
    # @user_messages = Message.find_all_by_user_id(params[:id])
    
    # @user_messages = Message.find_all_by_to(params[:name])    
    end
  end
  
  def edit
    u_id = params[:id]
    @user = User.find_by_id(u_id)
  end
  
  def update
    
    @user = User.find_by_id(params[:id])
    # @user = params[:user]
    
    @user.name = params[:user][:name]
    @user.username = params[:user][:username]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
       
    @user.save
    
    redirect_to users_url
    
  end
  
  def destroy
    
    @user = User.find_by_id(params[:id])
    @user.destroy
    redirect_to users_url
    
  end
  
end
