class RoundsController < ApplicationController
  before_action :authenticate_user!

  def index
    @rounds = Round.where("course_id = ?", params[:course_id])
  end

  def new
    @round = Round.new(course_id: params[:course_id])
  end


  def create
    @round = Round.new(round_params)
    if @round.save
      redirect_to round_path(@round)
    else
      render :new
    end
  end

  private

  def round_params
    params.require(:round).permit(:score, :date, :course_id)
  end

end
