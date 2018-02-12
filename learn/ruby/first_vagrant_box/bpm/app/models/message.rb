class Message < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :comments, as: :comment
end
