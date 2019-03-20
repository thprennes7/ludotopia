class HomeController < ApplicationController
  def index
    @banners = Banner.all.sort.reverse
    @games = Game.all
  end
end
