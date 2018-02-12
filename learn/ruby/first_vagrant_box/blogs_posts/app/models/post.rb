class Post < ActiveRecord::Base
  belongs_to :blog
  has_many :messages
  validates :title, :content, presence: true
  validates :title ,length: {minimum: 7}

  after_destroy :destroy_assoc

  private
    def destroy_assoc
      
    end
end
