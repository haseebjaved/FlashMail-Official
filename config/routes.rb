FlashMail::Application.routes.draw do
  
  get "/", :controller => "sessions", :action => "signin"
  
  get "users", :controller => "users", :action => "index", :as => "users"
  post "users", :controller => "users", :action => "create"
  
  get "signup", :controller => "users", :action => "new", :as => "new_user"
  get "users/:id/edit", :controller => "users", :action => "edit", :as => "edit_user"
  
  get "users/:id", :controller => "users", :action => "show", :as => "user"
  put "users/:id", :controller => "users", :action => "update"
  delete "users/:id", :controller => "users", :action => "delete"
  
  
  get "message/new", :controller => "messages", :action => "new", :as => "new_message"
  
  post "messages", :controller => "messages", :action => "create"
  
  get "messages", :controller => "messages", :action => "index"
  
  get "messages/:id", :controller => "messages", :action => "show"
  
  
  # get different views from mailbox, Unread, user/:id/mailbox/Read, Trash, Later, etc. using
  # get "user/:id/mailbox/", :controller => "users", :action => "mailbox_type"

#         OR

  # get "messages/index", :controller => "messages", :action => "index"
  #   
  #   # get different views form message, new/compose, incoming mail, reply, forward, etc.
    # get "user/:id/mailbox/show", :controller => "messages", :action => "show"
  #   
  #   get "help", :controller => "users", :action => "help"
  #   
  #   get "signout", :controller => "sessions", :action => "signout"
  #   
end
