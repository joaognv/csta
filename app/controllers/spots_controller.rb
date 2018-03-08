class SpotsController < ApplicationController



  def index
    @spots = Spot.all
  end

  def new
    @spot = Spot.new
    # @user = current_user
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

  def show
    @spot = Spot.find(params[:id])
  end

  def edit
    set_spot
  end

  def update
    set_bed
    @spot.update(spot_params)
    redirect_to spot_path(@spot)
  end

  def destroy
    set_spot
    @spot.destroy
    redirect_to root_path
  end


 private

  def spot_params  # should i have (:title, :body, aswell as :photo) below?
    params.require(:spot).permit(:city, :description, :title, :body, :photo)
  end

  def set_spot
    @spot = Spot.find(params[:id])
  end
end
