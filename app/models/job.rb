class Job < ApplicationRecord
	include ActiveModel::Validations

	PORTS = ["Shanghai", "Singapore", "Shenzhen", "Hong Kong", "Ningbo-Zhoushan", "Busan", "Qingdao", "Guangzhou", "Jebel Ali (Dubai)", "Tianjin", "Rotterdam", "Port Klang", "Kaohsiung", "Dalian", "Hamburg", "Antwerp", "Xiamen", "Los Angeles", "Tanjung Pelepas", "Long Beach"]

	has_and_belongs_to_many :boats
	validate :minimum_cost
	validates :description, length: {minimum: 50, too_short: "Please be more descriptive; at least %{count} characters required."}
	validate :origin_available
	validate :destination_available

	def minimum_cost
		if cost < 1000
			errors.add(:cost, "Cannot charge below $1000")
		end
	end


	def origin_available
	# ports = ["Shanghai", "Singapore", "Shenzhen", "Hong Kong", "Ningbo-Zhoushan", "Busan", "Qingdao", "Guangzhou", "Jebel Ali (Dubai)", "Tianjin", "Rotterdam", "Port Klang", "Kaohsiung", "Dalian", "Hamburg", "Antwerp", "Xiamen", "Los Angeles", "Tanjung Pelepas", "Long Beach"]
		if !PORTS.find_index(origin)
			errors.add(:origin, "We do not service this location")
		end
	end

	def destination_available
	# ports = ["Shanghai", "Singapore", "Shenzhen", "Hong Kong", "Ningbo-Zhoushan", "Busan", "Qingdao", "Guangzhou", "Jebel Ali (Dubai)", "Tianjin", "Rotterdam", "Port Klang", "Kaohsiung", "Dalian", "Hamburg", "Antwerp", "Xiamen", "Los Angeles", "Tanjung Pelepas", "Long Beach"]
		if !PORTS.find_index(destination)
			errors.add(:destination, "We do not service this location")
		end
	end
end
