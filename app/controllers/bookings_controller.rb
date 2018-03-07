class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = current_user.bookings
  end



  def edit

  end

  def update
    set_booking
      # We should change status here. Status should be set to 'pending' by default first
    @booking.status = "Pending confirmation"
    @booking.save!
  end

  def destroy
    set_booking
    @booking.destroy
    redirect_to root
  end

  private

  def booking_params
    params.require(:require).permit(:status, :time_arrive, :time_leave)

  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
