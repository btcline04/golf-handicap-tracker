class ClubsController < ApplicationController
  def index
  end

  def new
    @club = Club.new
  end

  def edit
  end

  def show
  end

  def create

  end

  def update

  end

  private

  def find_club
    @club = Club.find(params[:id])
  end

  def club_params
    params.require(:club).permit(:name, :brand)
  end

end
