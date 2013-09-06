class Answer < ActiveRecord::Base
	belongs_to :question

	validates :from, length: { maximum: 16 }
	validates :message, length: { minimum: 10}

	validates :from, :message, presence: true
end
