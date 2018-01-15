class ClubsController < ApplicationController
  before_action :find_club, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @clubs = Club.all
  end

  def new
    @club = current_user.clubs.build
  end

  def edit
  end

  def show
  end

  def create
    @club = current_user.clubs.build(club_params)
      if @club.save
        redirect_to club_path(@club)
      else
        redirect_to new_club_path, notice: "Try again!"
      end
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
