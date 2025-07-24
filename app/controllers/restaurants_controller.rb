class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %w[show]
  def index
    @restaurants = Restaurant.geocoded

    @markers = @restaurants.geocoded.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { restaurant: restaurant }),
        marker_html: render_to_string(partial: "marker", locals: { restaurant: restaurant })
      }
    end
  end

  def show
    @dishes = @restaurant.dishes
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
