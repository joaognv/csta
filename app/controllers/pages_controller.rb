class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @spots = Spot.take(5)
  end

  def about
  end

  def contact
  end

  def dashboard
    @user = current_user
  end
end
