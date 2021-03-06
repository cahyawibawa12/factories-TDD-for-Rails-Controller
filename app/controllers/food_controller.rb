class FoodController < ApplicationController
  def index
    @foods = params[:letter].nil? ? Food.all : Food.by_letter(params[:letter])
  end

  def new
     @food = Food.new
  end

  def show
    @food = Food.find_by(id: params[:id])
  end

  def edit
    @food = Food.find_by(id: params[:id])
  end

  def create
    @food = Food.new(params.require(:food).permit(:name, :description, :price))
    if @food.save
      redirect_to food_path(@food)
    else
      render :new
    end
  end

  def update
    @food = Food.find_by(id: params[:id])
    @food.update(params.require(:food).permit(:name))
    if @food.save
      redirect_to food_path(@food)
    else
      render :edit, status: 422
    end
  end
  
  def destroy
    @food = Food.find_by(id: params[:id])
    @food.destroy
    redirect_to food_path
  end
end
