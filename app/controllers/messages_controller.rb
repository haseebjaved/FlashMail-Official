class MessagesController < ApplicationController
  
  def index
  end
  
  def new
    @message = Message.new
  end
  
  def create
    
    @message = Message.new(params[:message])
    
    # :to => params[:message]["to"], 
    #                           :user_id => params[:message]["user_id"],
    #                           :action => params[:message]["action"],
    #                           :deadline => params[:message]["deadline"],
    #                           :content => params[:message]["content"]
    
    # temp_msg = Message.find_by_to(params[:to])
    
    @user = User.find_by_username(@message.to) 
    
    # || User.find_by_username(@message.cc) || User.find_by_username(@message.bcc)
    
    @message.user_id = @user.id
    
    @message.save
    
    # u_id = @message.user_id
    
    redirect_to user_url(@user.id)
    
  end
  
  def show
    
    @message = Message.find_by_id(params[:id])
    
    @u_id = @message.user_id
  
  end
  
  def edit
    
  end
  
  def update
    
  end

  def destroy
      
      @message = Message.find_by_id(params[:id])
      
      u = User.find_by_id(@message.user_id) 
      
      @message.destroy
      
      redirect_to user_url(u.id)
      
  end
  
  def later
  end

  def calendar
  end

  def call
  end

  def save
  end
  
end
