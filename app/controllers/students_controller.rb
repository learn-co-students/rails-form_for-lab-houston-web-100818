class StudentsController < ApplicationController

    def index
        @students = Student.all 
    end
    
    def new
       
    end

    def create
        Student.create(student_params)
        redirect_to student_path(Student.last)
    end

    def show
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
		@student.update(student_params)
		redirect_to student_path(@student)
    end

    private
	  
    def student_params
      params[:student].permit(:first_name, :last_name)
    end

end