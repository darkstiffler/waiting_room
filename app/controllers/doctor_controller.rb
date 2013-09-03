class DoctorController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find params[:id]
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.create doctor_params  
  end

  def update
  end

  def destroy
    doctor = Doctor.find params[:id]
    doctor.destroy
    redirect_to welcome_path
  end

  def doctor_params
    params.require(:doctor).permit(:name, :age, :licence)
  end

end
