class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]
  
  def index
    @foods = current_user.foods
  end

  def show
  end

  def new
    @food = Food.new
  end

  def create
    @food = current_user.foods.new(food_params)
    if @food.save
      redirect_to foods_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @food.update(food_params)
    redirect_to foods_path
    else
      render :edit
    end
  end

  def destroy
    @food.destroy
    redirect_to foods_path
  end

private
  def food_params
    params.require(:food).permit(:item, :group)
  end

  def set_food
    @food = current_user.foods.find(params[:id])
  end

end
