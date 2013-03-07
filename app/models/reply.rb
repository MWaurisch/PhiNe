class Reply < ActiveRecord::Base
  attr_accessible :message, :member_id, :question_id
  belongs_to :question
  belongs_to :member
  
  validates :message, :presence => true
end
