class AnswersController < ApplicationController

	def index
	end

	def show
	end


	# this enables the current user/doc to submit the answer to 'x' question 
	def create
		answer = Answer.new answer_params
		answer.doc = current_doc if current_doc
		answer.save!
		
		redirect_to question_path(answer.question)

	end

	def new
	end

	def edit 
	end

	def destroy
	end
	
	# standard strong params method
	def answer_params
		params.require(:answer).permit(:message, :from, :question_id)
	end


end
