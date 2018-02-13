class Dojo < ActiveRecord::Base
  has_many :ninjas
  validates :name, :city, :state, presence: true
  validates :state, length: { minimum: 2}

  before_save :downcase_all



  private
  def downcase_all
    self.state.downcase!
  end
end
