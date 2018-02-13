class User < ActiveRecord::Base
  validates :first_name, :last_name, :email_address, :age, presence: true
  validates :age, numericality: true
  validates :first_name, :last_name, length: { minimum: 2}
  validates_numericality_of :age, greater_than_or_equal_to: 10, less_than_or_equal_to: 150
end
  # has_many :friendships
  # has_many :friends, :through=> :friendships



#
#
# Have the 3rd user create several posts for different blogs.
#
#
# Superpac.joins(:candidates).select("COUNT(candididates.id) as numer_of_candidates", "suerpacs.name").group(superpacs.id)
#
# Party.joins(:candidates).select(candidates.f_name, candidates.l_name, parties.name)
# Donation.sum(:amount)
# candidates.join(:superpac).join(:party).select("blah blah")
# Candidates.join(:donation).
# group by id is for repeated and we can get singular
#
# party.joins(:candidates).where.not(part: Party.where(name: "Golden State Warriors"))
