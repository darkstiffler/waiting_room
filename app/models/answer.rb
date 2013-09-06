class Answer < ActiveRecord::Base
	belongs_to :question
	belongs_to :doc

	validates :from, length: { maximum: 16 }
	validates :from, :message, presence: true
end
