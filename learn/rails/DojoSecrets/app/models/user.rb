class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  has_secure_password
  has_many :secrets
  has_many :likes
  has_many :secrets_liked, through: :likes, source: :secret
  validates :name, presence: true
  validates :password, length: {minimum: 8}
  validates :email, presence: true, uniqueness: { case_sensitive: true }, format: { with: EMAIL_REGEX }

  before_create :downcase
  def downcase
    self.email.downcase!
  end


end
