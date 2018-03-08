class DashboardController < ApplicationController
  def index
    @user = current_user
    @owned_spots = @user.spots
    # @bookings = @user.bookings
  end
end
