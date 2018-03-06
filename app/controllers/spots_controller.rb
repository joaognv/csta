class SpotsController < ApplicationController
  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.user = current_user
    if @spot.save
      redirect_to spot_path(@spot)
    else
      flash[:alert] = @spot.errors.full_messages
      render new_spot_path
    end
  end

  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
  end

 private

  def spot_params  # should i have (:title, :body, aswell as :photo) below?
    params.require(:spot).permit(:city, :description, :title, :body, :photo)
  end
end
