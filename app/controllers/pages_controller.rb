class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @spots = Spot.take(3)
  end

  def about
  end

  def contact
  end
end
