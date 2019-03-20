class DonationsController < ApplicationController
  # before_action :authenticate_user!
  def show
    @donation = Donation.find(params[:id])
  end

  def new
  end

def create
  @amount = params[:amount]

  @amount = @amount.gsub('$', '').gsub(',', '')

  begin
    @amount = Float(@amount).round(2)
  rescue
    flash[:error] = 'Charge not completed. Please enter a valid amount in USD ($).'
    redirect_to new_charge_path
    return
  end

  @amount = (@amount * 100).to_i # Must be an integer!

  if @amount < 500
    flash[:error] = 'Charge not completed. Donation amount must be at least $5.'
    redirect_to new_charge_path
    return
  end

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

  donation = Donation.new(stripe_customer_id: customer.id, user_id: current_user.id, game_id: charge_params[:game_id] , amount: @amount)
    if donation.save
      redirect_to root_path
      flash[:success] = "Votre donation a été validé !!!"
   end

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private
  
  def charge_params
#   params.permit(:user_id, :game_id, :stripeToken, :stripeEmail, :amount )
    params.permit(:game_id, :stripeToken, :amount )
  end
end 