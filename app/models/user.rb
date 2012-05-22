class User < ActiveRecord::Base
  
  attr_accessible :name, :password, :password_confirmation, :username
  
  has_many :messages

    validates :name, presence: true, length: {maximum: 50}
    validates :password, presence: true
    validates :password_confirmation, presence: true
      
      VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
      validates :username, presence: true, format: { with: VALID_EMAIL_REGEX }
  
  has_secure_password

end
