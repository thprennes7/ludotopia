class Tictactoe::TictactoeUsersController < ApplicationController
	before_action :authenticate_user!
	before_action :get_participant, only: [:destroy]
	respond_to :js, :html, :json

	def create
		user = TictactoeUser.new(tictactoe_id: params[:game], user_id: params[:user])
		if TictactoeUser.max_participant(params[:game]) && TictactoeUser.not_already_in?(params[:user], params[:game])
			if user.save
				respond_with(user)
			else
				flash[:error] = "L'utilisateur n'a pas pu être ajouté, si cela persiste, contactez un admin."
			end
		else
			flash[:error] = "L'utilisateur est déjà inscrit ou le nombre max de participants est atteind."
		end
	end

	def destroy
		respond_with(@participant)
	end

	private
	def get_participant
		@particpant = TictactoeUser.find(params[:id])
	end
end
