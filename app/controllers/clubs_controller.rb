class ClubsController < ApplicationController
  before_action :find_club, only: [:show, :edit, :update, :destroy, :next]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @clubs = Club.all
  end

  def new
    @club = Club.new
  end

  def create
    @club = Club.new(club_params)
    @club.user_id = current_user.id
    if @club.save
      redirect_to club_path(@club)
    else
      flash[:danger] = "Please fill in all fields and try again!"
      redirect_to new_club_path
    end
  end

  def edit
  end

  def show
  end

  def update
  end

  def next
    @next_club = @club.next
    render json: @next_club
  end

  def club_info
    @clubs = current_user.clubs
    render json: @clubs, status: 201
  end

  private

  def find_club
    @club = Club.find(params[:id])
  end

  def club_params
    params.require(:club).permit(:name, :brand, :bag_id)
  end

end
