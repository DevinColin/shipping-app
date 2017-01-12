class Boat < ApplicationRecord
	include ActiveModel::Validations

	PORTS = ["Shanghai", "Singapore", "Shenzhen", "Hong Kong", "Ningbo-Zhoushan", "Busan", "Qingdao", "Guangzhou", "Jebel Ali (Dubai)", "Tianjin", "Rotterdam", "Port Klang", "Kaohsiung", "Dalian", "Hamburg", "Antwerp", "Xiamen", "Los Angeles", "Tanjung Pelepas", "Long Beach"]

	has_and_belongs_to_many :jobs
	# has_attached_file :avatar
	validates :name, uniqueness: true
	validate :location_allowed

	has_attached_file :avatar, storage: :s3,
		 :s3_region => "us-west-2",
		 :s3_credentials => {
			 :s3_host_name       => "s3-us-west-2.amazonaws.com",
			 :bucket             => "devin-shipping-app",
			 :access_key_id      => ENV["SHIPPING_APP_ACCESS_KEY_ID"],
			 :secret_access_key  => ENV["SHIPPING_APP_AMAZON_SECRET"]
		 }

	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	def location_allowed
		if !PORTS.find_index(location)
			errors.add(:location, "for boat in non-existent port.")
		end
	end

end
