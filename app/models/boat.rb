class Boat < ApplicationRecord
	include ActiveModel::Validations

	PORTS = ["Shanghai", "Singapore", "Shenzhen", "Hong Kong", "Ningbo-Zhoushan", "Busan", "Qingdao", "Guangzhou", "Jebel Ali (Dubai)", "Tianjin", "Rotterdam", "Port Klang", "Kaohsiung", "Dalian", "Hamburg", "Antwerp", "Xiamen", "Los Angeles", "Tanjung Pelepas", "Long Beach"]

	has_and_belongs_to_many :jobs

	validates :name, uniqueness: true
	validate :location_allowed

	def location_allowed
		if !PORTS.find_index(location)
			errors.add(:location, "for boat in non-existent port.")
		end
	end

end
