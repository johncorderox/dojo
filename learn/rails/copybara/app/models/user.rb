class User < ActiveRecord::Base
  validates :first_name, :presence => false
end
