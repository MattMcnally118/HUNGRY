class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = current_user.reviews.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to profile_path, notice: "Review submitted!"
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, photos: [])
  end
end
