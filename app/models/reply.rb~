class Reply < ActiveRecord::Base
  attr_accessible :message
  belongs_to :question
  belongs_to :member
  
  validates :message, :presence => true
end
