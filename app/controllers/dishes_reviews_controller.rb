class DishesReviewsController < ApplicationController
  before_action :set_dishes_reviews, only: %w[show edit update destroy]

  def index
    @dishes_reviews = Dishes_reviews.all
  end

  def show
  end

  def new
    @dishes_reviews = Dishes_reviews.new
  end

  def create
    @dishes_reviews = Dishes_reviews.new(dishes_reviews_params)

    if @dishes_reviews.save
      redirect_to dishes_reviews_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @dishes_reviews.update(dishes_reviews_params)
      dishes_reviews_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @dishes_reviews.destroy
    dishes_reviews_path status: :see_other
  end

  private

  def dishes_reviews_params
    params.require(:dishes_reviews).permit(:rating, :comment, :dish_id)
  end

  def set_dishes_reviews
    @dishes_reviews = Dishes_reviews.find(params[:id])
  end
end
