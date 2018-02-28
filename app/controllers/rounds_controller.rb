class RoundsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_course, only: [:index, :create, :show]

  def index
    @rounds = @course.rounds
  end

  def new
    @round = Round.new(course_id: params[:course_id])
  end


  def create
    @round = Round.new(round_params)
    if @round.save
      redirect_to course_round_path(@course, @round)
    else
      render :new
    end
  end

  def show
    @round = @course.rounds.find_by(id: params[:id])
  end


  private

  def find_course
    @course = Course.find(params[:course_id])
  end

  def round_params
    params.require(:round).permit(:score, :date, :course_id)
  end

end
