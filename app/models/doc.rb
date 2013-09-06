class Doc < ActiveRecord::Base
	has_secure_password

	validates :licence, numericality: { only_integer: true }
	validates :licence,length: { maximum: 10 }

	validates :name, :licence, :password_digest, presence: true


end
