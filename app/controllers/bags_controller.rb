class BagsController < ApplicationController
  before_action :find_bag, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @bag = current_user.bags.first
    @bags = Bag.all
  end

  def new
    @bag = Bag.new
    @bag.clubs.build
  end

  def create
    @bag = current_user.bags.build(bag_params)
    if @bag.save
      render json: @bag, status: 201
    else
      flash[:danger] = "Please fill in all fields and try again!"
      redirect_to new_bag_path
    end
  end

  def show
    respond_to do |f|
      f.html
      f.json {render json: @bag, status: 201}
    end
  end

  def edit
  end

  def bag_data
    @bags = current_user.bags
    render json: @bags, status: 201
  end

  private

  def find_bag
    @bag = Bag.find(params[:id])
  end

  def bag_params
    params.require(:bag).permit(:title, :brand, clubs_attributes: [:name, :brand])
  end

end
