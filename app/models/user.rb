class User < ActiveRecord::Base

	validates :name, :age, presence: true
	validates :name, length: {maximum: 20, minimum: 5}	
	validates :name, uniqueness: true
end
