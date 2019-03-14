class Tictactoe::TictactoesController < ApplicationController
	before_action :get_tictactoe, only: [:show, :destroy, :update, :get_status, :get_grid]
  before_action :authenticate_user!
	before_action only: [:show] do
		is_whitelisted?(@party)
	end

	def create
		game = Tictactoe.create(status: 0)
		if game.save
			TictactoeUser.create!(tictactoe_id: game.id, user_id: current_user.id, player: 1)
			TictactoeGrid.create!(tictactoe_id: game.id, player: 1)
			redirect_to Tictactoe_path(game.id)
		else
			flash[:error] = "Une erreur est survenue. Si le problème persiste, contactez un admin."
			redirect_to request.referer
		end
	end
	def show
		@friends = Contact.where(me: current_user)
		@participants = TictactoeUser.where(tictactoe_id: @party.id)
		@user_participation = TictactoeUser.find_by(tictactoe_id: @party.id, user_id: current_user.id)
	end
	def update
		@party.update(status: params[:status])
	end

	def get_status
	end
	def get_grid
		@grid = TictactoeGrid.find_by(tictactoe_id: @party.id)
	end

	private
	def get_tictactoe
		@party = Tictactoe.find(params[:id])
	end
end
