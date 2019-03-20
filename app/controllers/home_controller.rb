class HomeController < ApplicationController
  def index
    @banners = Banner.all.sort.reverse
  end
end
