class User < ApplicationRecord
  has_many :posts, dependent: :delete_all
  has_many :comments
  before_save { email.downcase! }
  validates :username, presence: true, length: { minimum: 8 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i 
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false}  
  validates :password, presence: true, length: { minimum: 8 }
end
