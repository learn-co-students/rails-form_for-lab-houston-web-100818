class SchoolclassesController < ApplicationController
    def index
    @schoolclasses = Schoolclass.all
  end

  def new
  end

  def create
    Schoolclass.create(schoolclass_params)
    redirect_to schoolclass_path(Schoolclass.last)
  end

  def show
    @schoolclass = Schoolclass.find(params[:id])
  end
  
  def edit
    @schoolclass = Schoolclass.find(params[:id])
    
  end
  
  def update
    @schoolclass = Schoolclass.find(params[:id])
    @schoolclass.update(schoolclass_params)
    redirect_to schoolclass_path(@schoolclass)
  end

  private

  def schoolclass_params
    params[:schoolclass].permit(:title, :room_number)
  end

end