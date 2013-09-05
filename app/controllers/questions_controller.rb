class QuestionsController < ApplicationController
  
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create question_params
    redirect_to questions_path
  end

  def show
    @question = Question.find(params[:id])
  end

  def update
  end

  def destroy
    @question = Question.find[:id]
    question.destroy
    redirect_to questions_path
  end

  def edit
  end

  def question_params
    params.require(:question).permit(:title, :body)
  end

end
