class DonationsController < ApplicationController
  # before_action :authenticate_user!
  def show
    @donation = Donation.find(params[:id])
  end

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

    donation = Donation.new(stripe_customer_id: customer.id, user_id: current_user.id, game_id: charge_params[:game], amount: charge_params[:amount])
    if donation.save
      flash[:success] = "Merci pour votre don, vous avez reçus un mail le récapitulant."

    end
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to game_path(current_user.id)
  end

  private
  
  def charge_params
    params.permit(:user_id, :game, :stripe_customer_id, :amount  )
  end
end 