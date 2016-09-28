class User < ActiveRecord::Base
before_save { self.username= username.downcase }
  validates :username, presence: true
  attr_accessor :password_confirmation
  validates_confirmation_of :password
  
  has_secure_password
  has_one :address

end
