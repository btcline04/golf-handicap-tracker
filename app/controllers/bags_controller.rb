class BagsController < ApplicationController
  before_action :find_bag, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @bag = Bag.new
  end

  def create
    @bag = Bag.new(bag_params)
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
