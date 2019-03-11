class Tictactoe::TictactoesController < ApplicationController
	def create
		game = Tictactoe.create(status: 0)
		if game.save
			redirect_to Tictactoe_path(game.id)
		else
			flash[:error] = "Une erreur est survenue. Si le problème persiste, contactez un admin."
			redirect_to request.referer
		end
	end
	def show
		@party = Tictactoe.find(params[:id])
	end
end
