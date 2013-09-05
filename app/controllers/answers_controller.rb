class AnswersController < ApplicationController

	def index
	end

	def show
	end

	def create
		answer = Answer.create answer_params
		redirect_to question_path(answer.question)
	end

	def new
	end

	def edit 
	end

	def destroy
	end

	def answer_params
		params.require(:answer).permit(:message, :from, :question_id)
	end


end
