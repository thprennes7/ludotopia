class DonationsController < ApplicationController
<<<<<<< HEAD
  before_action :set_donation, except: [:index]
  respond_to :js, :html, :json


  def index
    @donations = Donation.all.sort.reverse
    @games = Game.all.sort.reverse
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
=======
  # before_action :authenticate_user!

  def create
    @amount = (params[:amount] * 100).to_i

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })

    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'eur',
    })

    donation = Donation.new(stripe_customer_id: customer.id, user_id: current_user.id, game_id: params[:game])
    if donation.save
      flash[:success] = "Merci pour votre don, vous avez reçus un mail le récapitulant."

    end
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to game_path(current_user.id)
  end

  def show
    @donation = Donation.find(params[:id])
  end
>>>>>>> guillaume
end
