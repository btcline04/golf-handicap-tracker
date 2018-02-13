class CoursesController < ApplicationController
  before_action :find_course, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
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
