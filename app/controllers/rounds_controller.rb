class RoundsController < ApplicationController
  before_action :authenticate_user!

  def index
    @course = Course.find(params[:course_id])
    @rounds = @course.rounds
  end

  def new
    @round = Round.new(course_id: params[:course_id])
  end


  def create
    @course = Course.find(params[:course_id])
    @round = Round.new(round_params)
    if @round.save
      redirect_to course_round_path(@course, @round)
    else
      render :new
    end
  end

  def show
    @course = Course.find(params[:course_id])
    @round = @course.rounds.find_by(id: params[:id])
  end


  private

  def round_params
    params.require(:round).permit(:score, :date, :course_id)
  end

end
