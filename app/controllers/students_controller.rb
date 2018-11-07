class StudentsController < ApplicationController
    before_action :define_current_student

    def create
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end 

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end 

    def update
        @student.update(student_params)
        redirect_to student_path(@student)
    end 

    def define_current_student
        if params[:id]
            @student = Student.find(params[:id])
        else 
            @student = Student.new
        end 
    end 
end
