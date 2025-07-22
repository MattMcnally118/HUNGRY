class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %w[show]

  def index
    @restaurants = Restaurant.all
    # put geocoding for maps
  end

  def show
    @dishes = @restaurant.dishes
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
