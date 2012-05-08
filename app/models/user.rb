class User < ActiveRecord::Base
  
  attr_accessible :name, :password, :password_confirmation, :username

  validates_presence_of :name
  validates_presence_of :password
  validates_presence_of :password_confirmation
  validates_presence_of :username

end
