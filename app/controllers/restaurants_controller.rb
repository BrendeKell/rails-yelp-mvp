class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create!(params_restaurant)
      if @restaurant.save
        redirect_to restaurant_path(@restaurant), notice: 'new restaurant successfully created!'
      else
        render :new
      end
  end

  def edit
  end

  def update
    @restaurant.update(params_restaurant)
    redirect_to @restaurant, notice: "restaurant was successfully updated!"
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path, status: :see_other
  end

  private

  def params_restaurant
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
