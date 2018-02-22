class RoundsController < ApplicationController
  before_action :find_round, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

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

  def find_round
    @round = Round.where("course_id = ?", params[:course_id])
  end

  def round_params
    params.require(:round).permit(:score, :date)
  end

end
