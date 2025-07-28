class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def profile
    @questions = current_user.questions.includes(:restaurant).reject { |q| q.restaurant.nil? }

    # Get all restaurants tied to those questions
    @restaurants = @questions.map(&:restaurant).compact.uniq.select(&:geocoded?)

    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { restaurant: restaurant }),
        marker_html: render_to_string(partial: "marker", locals: { restaurant: restaurant })
      }
    end
  end
end
