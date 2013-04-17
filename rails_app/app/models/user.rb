class User < ActiveRecord::Base
	has_many :posts
	has_secure_password
  attr_accessible :email, :name, :password, :password_confirmation

  before_save { |user| user.email = email.downcase }
  
	validates :password, presence: true, length: { minimum: 8, maximum: 16 }
	validates :password_confirmation, presence: true

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
end
