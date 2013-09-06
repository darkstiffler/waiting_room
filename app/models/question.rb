class Question < ActiveRecord::Base
	has_many :answers

	validates :title, :body, presence: true
	validates :title, length: {maximum: 30} 
	
end
