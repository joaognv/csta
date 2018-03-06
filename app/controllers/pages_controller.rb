class PagesController < ApplicationController

  def home
    @spots = Spot.take(5)
  end

  def about
  end

  def contact
  end

end
