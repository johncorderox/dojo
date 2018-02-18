class Dojo < ActiveRecord::Base
    validates :branch, presence: true
    has_many :students

    def self.get_dojos_list
      all
    end

end
