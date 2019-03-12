class Tictactoe::TictactoeUsersController < ApplicationController
	before_action :authenticate_user!
	before_action :get_participant, only: [:destroy]
	respond_to :js, :html, :json

	def create
		user = TictactoeUser.new(tictactoe_id: params[:game], user_id: params[:user])
		if user.save
			respond_with(user)
		else
			flash[:error] = "Une erreur est survenue lors de l'ajout."
		end
	end

	def destroy
		respond_with(@participant)
	end

	private
	def get_participant
		@particpant = TictactoeUser.find(params[:id])
end
