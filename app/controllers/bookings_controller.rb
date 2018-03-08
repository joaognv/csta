class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  # Needs to disappear
  def index
    @bookings = Booking.where(user_id: current_user.id)
  end


  # Needs to be rewritten and tested
  def create
    @spot = Spot.find(params[:spot_id])
    @booking = Booking.new(booking_params)
    @booking.spot = @spot
    @booking.user = current_user
    @booking.status = "Pending host approval"
    if @booking.checkout_time && @booking.checkin_time
      @booking.value = (@booking.checkout_time - @booking.checkin_time).to_f * @booking.spot.price.to_f
    else @booking.value = 0
    end
    if @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to spot_path(@spot)
    end
  end

  # Needs to disappear
  def show
    set_booking
    @spot = booking.spot
  end

  # Needs to go
  def edit

  end

  def update
    set_booking
      # We should change status here. Status should be set to 'pending' by default first
    @booking.status = "Pending confirmation"
    @booking.save!
    redirect_to booking_path(@booking)
  end

  def destroy
    set_booking
    @booking.destroy
    redirect_to root_path
  end

  private

  def booking_params
    params.require(:require).permit(:status, :time_arrive, :time_leave)

  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
