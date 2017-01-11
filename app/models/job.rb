class Job < ApplicationRecord
	include ActiveModel::Validations

	PORTS = ["Shanghai", "Singapore", "Shenzhen", "Hong Kong", "Ningbo-Zhoushan", "Busan", "Qingdao", "Guangzhou", "Jebel Ali (Dubai)", "Tianjin", "Rotterdam", "Port Klang", "Kaohsiung", "Dalian", "Hamburg", "Antwerp", "Xiamen", "Los Angeles", "Tanjung Pelepas", "Long Beach"]
	PRICE_PER_CONTAINER = 310

	has_and_belongs_to_many :boats
	validate :minimum_cost_validation
	validates :description, length: {minimum: 50, too_short: "Please be more descriptive; at least %{count} characters required."}
	validate :origin_available_validation
	validate :destination_available_validation

  def set_cost
		self.cost = self.amount * PRICE_PER_CONTAINER
	end

	def minimum_cost_validation
		if cost < 1000
			errors.add(:cost, "Total below $1000, needs override")
		end
	end


	def origin_available_validation
		if !PORTS.find_index(origin)
			errors.add(:origin, "We do not service this location")
		end
	end

	def destination_available_validation
		if !PORTS.find_index(destination)
			errors.add(:destination, "We do not service this location")
		end
	end
end
