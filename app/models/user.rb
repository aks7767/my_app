class User < ActiveRecord::Base
  attr_accessor :password, :password_confirmation
  
  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
  validates :name, presence:true, length: {maximum: 50}
  validates :email, presence:true, uniqueness: {case_sensitive: false}
  validates :password, presence:true, length: {minimum: 6}
  validates :password_confirmation, presence:true
  
  def authenticate(password)
    uFound = true
    uFound
  end
  private 
  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end