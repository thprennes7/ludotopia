class Admin::DonationsController < AdminsController
  before_action :set_donation, except: [:index]
  respond_to :js, :html, :json


  def index
    @donations = Donation.all.sort.reverse
  end

  def show

  end

  def create
    @donation = Donation.new(donation_params)
    flash[:notice] = "Don effectué !"
    respond_with(@donation)
  end

  def update
    flash[:notice] = "Donation mise à jour"
    respond_with(@donation)
  end

  private

  def set_donation
    @donation = Donation.find(params[:id])
  end

  def article_params
    params.require(:donation).permit(:user_id, :game_id, :stripe_customer_id, :amount)
  end
end
