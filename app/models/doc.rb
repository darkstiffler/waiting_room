class Doc < ActiveRecord::Base
	has_secure_password
	has_many :answers

	validates :licence, numericality: { only_integer: true }
	validates :licence,length: { minimum: 3 }
	validates :name, uniqueness: true


	validates :name, :licence, :password_digest, presence: true


end
