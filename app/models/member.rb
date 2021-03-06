class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :nickname, :ismentor, :isadmin
  
  has_many :replies
  has_many :questions
  
  validates :nickname, :presence => true, :length => { :minimum => 3 }
  validates :email, :presence => true
  validates :password, :presence => true, :length => { :minimum => 8 }
end
