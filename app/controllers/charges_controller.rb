class ChargesController < ApplicationController
  before_action :authenticate_user!
#A method related to stripe and cart.
  def new
  end
end
