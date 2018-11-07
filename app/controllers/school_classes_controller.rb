class SchoolClassesController < ApplicationController
    before_action :define_current_school_class

    def create
        @school_class = SchoolClass.create(school_class_params)
        redirect_to school_class_path(@school_class)
    end

    def update
        @school_class.update(school_class_params)
        redirect_to school_class_path(@school_class)    
    end

    def define_current_school_class
        if params[:id]
            @school_class = SchoolClass.find(params[:id])
        else 
            @school_class = SchoolClass.new
        end

    end 

    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end 

end
