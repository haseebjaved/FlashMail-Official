class Message < ActiveRecord::Base
  attr_accessible :action, :attach_link, :bcc, :cc, :content, :deadline, :to, :user_id, :when, :who, :username
  
     belongs_to :user
  
     validates :content, presence: true, length: { maximum: 200 }
     
     VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
     validates :to, presence: true, format: { with: VALID_EMAIL_REGEX }
     validates :cc, format: { with: VALID_EMAIL_REGEX }
     validates :bcc, format: { with: VALID_EMAIL_REGEX }
     
end
