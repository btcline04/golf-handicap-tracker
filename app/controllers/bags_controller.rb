class BagsController < ApplicationController
  before_action :find_bag, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @bags = Bag.all
  end

  def new
    @bag = current_user.bags.build
  end

  def create
    @bag = current_user.bags.build(bag_params)
    if @bag.save
      redirect_to bag_path(@bag)
    else
      redirect_to new_bag_path, notice: "Try again!"
    end
  end

  def show
  end

  def edit
  end

  private

  def find_bag
    @bag = Bag.find(params[:id])
  end

  def bag_params
    params.require(:bag).permit(:title, :brand)
  end

end
