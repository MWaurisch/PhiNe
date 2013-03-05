class Question < ActiveRecord::Base
  attr_accessible :message
  has_many :replies
  belongs_to :member
  
  validates :message, :presence => true
  
end
