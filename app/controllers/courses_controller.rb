class CoursesController < ApplicationController
  before_action :find_course, only: [:show, :edit, :update, :destroy, :handicap]
  before_action :authenticate_user!

  def index
    @courses = current_user.courses.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = current_user.courses.build(course_params)
      if @course.save
        redirect_to course_path(@course)
      else
        flash[:danger] = "Please fill in all fields and try again!"
        redirect_to new_course_path
      end
  end

  def edit
  end

  def update
  end

  def show
    @handicap = @course.rounds
  end

  private

  def find_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :location, :par)
  end

end
