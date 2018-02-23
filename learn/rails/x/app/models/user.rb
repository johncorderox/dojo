class User < ActiveRecord::Base
  has_secure_password

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  has_many :ideas
  has_many :likes
  has_many :ideas_liked, through: :likes, source: :idea

  validates :name, presence: true
  validates :password, length: {minimum: 8}
  validates :email, presence: true, uniqueness: { case_sensitive: true }, format: { with: EMAIL_REGEX }

end
