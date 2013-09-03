class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create! user_params
    redirect_to new_questions_path
  end

  def update
  end

  def edit
  end

  def delete
  end

  def user_params
    params.require(:user).permit(:name, :age, :location)
  end
  
end
