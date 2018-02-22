class Attend < ActiveRecord::Base
  belongs_to :users
  belongs_to :events
end
