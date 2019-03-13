class Admin::DonationsController < AdminsController
  before_action :set_donation, except: [:index]
  respond_to :js, :html, :json


  def index
    @donations = Donation.all.sort.reverse
    @games = Game.all.sort.reverse
  end

  def show

  end

  private

  def set_donation
    @donation = Donation.find(params[:id])
  end

  def article_params
    params.require(:donation).permit(:user_id, :game_id, :stripe_customer_id, :amount)
  end
end
