class Loan < ActiveRecord::Base
	validates :giver, :sum, :term, :interest, presence: true
end
