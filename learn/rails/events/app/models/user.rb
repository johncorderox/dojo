class User < ActiveRecord::Base
  has_secure_password

  has_many :events #events created
  has_many :attends
  has_many :attends, dependent: :destroy


  has_many :events_attending, through: :attends, source: :event #events attending
  has_many :discussions #discussion logged in user created


  validates :first_name, :last_name, :email, :state,:city,  presence: true
end
