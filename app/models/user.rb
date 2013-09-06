class User < ActiveRecord::Base

	validates :name, :age, presence: true
	validates :name, length: {maximum: 20 }	
	validates :name, uniqueness: true
	
end
