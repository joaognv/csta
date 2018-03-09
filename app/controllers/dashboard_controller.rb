class DashboardController < ApplicationController
  def index
    @user = current_user
    @owned_spots = @user.spots
    # @bookings = @user.bookings
    @bookings_as_visitor = current_user.rented_out_spots
  end
end
