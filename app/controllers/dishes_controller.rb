class DishesController < ApplicationController
  before_action :set_dish, only: %w[show edit update destroy]

  def index
    @dishes = Dish.all
  end

  def show
  end

  private

  def set_dish
    @dish = Dish.find(params[:id])
  end
end
