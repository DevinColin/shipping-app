class Boat < ApplicationRecord
	has_and_belongs_to_many :jobs

	validates :name, uniqueness: true
end
