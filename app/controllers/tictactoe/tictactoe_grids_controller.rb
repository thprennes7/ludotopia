class Tictactoe::TictactoeGridsController < ApplicationController
	protect_from_forgery with: :null_session
	def update
		if params[:player] == 1
			next_player = 0
		else
			next_player = 1
		end
		grid = TictactoeGrid.find_by(tictactoe_id: params[:id])
		grid.update(player: next_player)
		if params[:a1] != nil
			grid.update(a1: params[:a1])
		end
		if params[:a2] != nil
			grid.update(a2: params[:a2])
		end
		if params[:a3] != nil
			grid.update(a3: params[:a3])
		end
		if params[:a4] != nil
			grid.update(a4: params[:a4])
		end
		if params[:a5] != nil
			grid.update(a5: params[:a5])
		end
		if params[:a6] != nil
			grid.update(a6: params[:a6])
		end
		if params[:a7] != nil
			grid.update(a7: params[:a7])
		end
		if params[:a8] != nil
			grid.update(a8: params[:a8])
		end
		if params[:a9] != nil
			grid.update(a9: params[:a9])
		end
	end
end
