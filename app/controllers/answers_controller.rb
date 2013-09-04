class AnswersController < ApplicationController
	def index
	end

	def show
	end

	def create
		answer = Answer.create params.require(:answer).permit(:message, :question_id)
		redirect_to question_path(answer.question)
	end

	def new
	end

	def edit 
	end

	def destroy
	end

end
