class Job < ApplicationRecord
	has_and_belongs_to_many :boats
	validate :minimum_cost

	def minimum_cost
		if cost < 1000
			errors.add(:cost, "Cannot charge below $1000")
		end
	end
end
