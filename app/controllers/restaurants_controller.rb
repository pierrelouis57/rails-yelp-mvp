class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :category, :phone_number, :address)
  end
end
