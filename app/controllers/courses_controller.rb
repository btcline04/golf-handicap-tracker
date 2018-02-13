class CoursesController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  private

  def find_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:clubs).permit(:name, :location, :par)
  end
  
end
