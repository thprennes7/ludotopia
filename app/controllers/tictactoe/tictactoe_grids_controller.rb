class Tictactoe::TictactoeGridsController < ApplicationController
	def update
		if params[:player] == 1
			next_player = 0
		else
			next_player = 1
		end
		TictactoeGrid.find_by(tictactoe_id: params[:id]).update(player: next_player, a1: params[:a1], a2: params[:a2], a3: params[:a3], a4: params[:a4], a5: params[:a5], a6: params[:a6], a7: params[:a7], a8: params[:a8], a9: params[:a9])
	end
end
