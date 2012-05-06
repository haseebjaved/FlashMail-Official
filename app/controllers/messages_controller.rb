class MessagesController < ApplicationController
  
  def index
  end
  
  def new
    @message = Message.new
  end
  
  def create
    
    @message = Message.new :to => params[:message]["to"], 
                          :user_id => params[:message]["user_id"],
                          :action => params[:message]["action"],
                          :deadline => params[:message]["deadline"],
                          :content => params[:message]["content"]
    @message.save
    
    u_id = @message.user_id
    
    redirect_to show_user_url(u_id)
    
  end
  
  def show
    
    #new
    
    #open
    
    #reply
    
    #reply_all
    
    #forward
  
  end
  
  def edit
    
  end
  
  def update
    
  end

  def delete
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
