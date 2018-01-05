class BagsController < ApplicationController
  def index
  end

  def new
    @bag = Bag.new
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
