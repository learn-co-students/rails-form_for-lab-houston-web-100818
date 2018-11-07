class StudentsController < ApplicationController

  def new
  end

  def create
    @student = Student.create(student_params(:first_name, :last_name))
    redirect_to @student
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params(:first_name, :last_name))
    redirect_to @student
  end

  def student_params(*args)
    params.require(:student).permit(*args)
  end

end
