class BookingsController < ApplicationController

  # def new
  # end

  # def create
  #   @question = Question.find(params[:question_id])
  #   @booking = @question.bookings.new(booking_params)
  #   @booking.user = current_user
  #   @booking.restaurant = @question.restaurant
  #   if @booking.save
  #     redirect_to user_path(current_user), notice: "Restaurant saved to your bookings!"
  #   else
  #     redirect_to question_path(params[:question_id]), alert: "Something went wrong."
  #   end
  # end

  # private

  # def booking_params
  #   params.require(:booking).permit(:user_id, :restaurant_id)
  # end
end
