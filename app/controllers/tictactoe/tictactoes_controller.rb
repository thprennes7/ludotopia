class Tictactoe::TictactoesController < ApplicationController
	before_action :get_tictactoe, only: [:show, :destroy]
	before_action only: [:show] do
		is_whitelisted?(params[:id])
	end
  before_action :authenticate_user!

	def create
		game = Tictactoe.create(status: 0)
		if game.save
			TictactoeUser.create!(tictactoe_id: game.id, user_id: current_user.id)
			redirect_to Tictactoe_path(game.id)
		else
			flash[:error] = "Une erreur est survenue. Si le problème persiste, contactez un admin."
			redirect_to request.referer
		end
	end
	def show
		
	end

	private
	def get_tictactoe
		@party = Tictactoe.find(params[:id])
	end
end
