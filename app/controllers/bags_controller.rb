class BagsController < ApplicationController
  before_action :find_bag, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @bags = Bag.all
  end

  def new
    @bag = Bag.new
    @bag.clubs.build
  end

  def create
    @bag = current_user.bags.build(bag_params)
    if @bag.save
      redirect_to bag_path(@bag)
    else
      flash[:danger] = "Please fill in all fields and try again!"
      redirect_to new_bag_path
    end
  end

  def show
    render json: @bag, status: 201
  end

  def edit
  end

  private

  def find_bag
    @bag = Bag.find(params[:id])
  end

  def bag_params
    params.require(:bag).permit(:title, :brand, clubs_attributes: [:name, :brand])
  end

end
