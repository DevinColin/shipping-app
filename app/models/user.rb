class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_attached_file :avatar, storage: :s3,
          :s3_region => "us-west-2",
          :s3_credentials => {
            :s3_host_name       => "s3-us-west-2.amazonaws.com",
            :bucket             => "devin-shipping-app",
            :access_key_id      => ENV["SHIPPING_APP_ACCESS_KEY_ID"],
            :secret_access_key  => ENV["SHIPPING_APP_AMAZON_SECRET"]
          }

  validates_attachment_content_type :avatar,
        :content_type => /\Aimage\/.*\Z/
end
