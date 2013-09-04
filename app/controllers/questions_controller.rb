class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Quesstion.find params[:id]
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create question_params
    redirect_to questions_path
  end

  def update
  end

  def destroy
  end

  def edit
  end

  def question_params
    params.require(:question).permit(:title, :body)
  end

end
