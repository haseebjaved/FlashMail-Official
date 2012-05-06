class Message < ActiveRecord::Base
  attr_accessible :action, :attach_link, :bcc, :cc, :content, :deadline, :to, :user_id, :when, :who
end
