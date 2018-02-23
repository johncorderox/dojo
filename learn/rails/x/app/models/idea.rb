class Idea < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  has_many :likes, dependent: :destroy
end
