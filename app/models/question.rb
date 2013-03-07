class Question < ActiveRecord::Base
  attr_accessible :message
  has_many :replies, :dependent => :delete_all 
  belongs_to :member
  
  validates :message, :presence => true
  
end
