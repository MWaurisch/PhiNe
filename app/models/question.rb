class Question < ActiveRecord::Base
  attr_accessible :message
  has_many :replies
end
