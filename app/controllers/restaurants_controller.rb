class RestaurantsController < ApplicationController
  # A visitor can see the list of all restaurants.
  def index
    @restaurants = Restaurant.all
  end

  # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(strong_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def strong_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
