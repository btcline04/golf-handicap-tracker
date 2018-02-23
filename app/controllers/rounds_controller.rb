class RoundsController < ApplicationController

  def index
  end

  def new
  end


  def create
  end

  private

  def find_round
    @round = Round.find(params[:id])
  end

  def round_params
    params.require(:round).permit(:score, :date, :course_id)
  end

end
