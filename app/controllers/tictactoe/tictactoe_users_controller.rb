class Tictactoe::TictactoeUsersController < ApplicationController
	before_action :authenticate_user!
	before_action :get_participant, only: [:destroy]

	def create
		player = TictactoeUser.where(tictactoe_id: params[:tictactoe]).length + 1
		user = TictactoeUser.new(tictactoe_id: params[:tictactoe], user_id: params[:participant], player: player)
		if TictactoeUser.where(tictactoe_id: params[:tictactoe]).length < 2 && TictactoeUser.find_by(user_id: params[:participant], tictactoe_id: params[:tictactoe]) == nil
			if user.save
				redirect_to request.referer
			else
				flash[:error] = "L'utilisateur n'a pas pu être ajouté, si cela persiste, contactez un admin."
			end
		else
			redirect_to request.referer
			flash[:error] = "L'utilisateur est déjà inscrit ou le nombre max de participants est atteind."
		end
	end

	def destroy
		puts "==============================="
		puts @participant
		puts "==============================="
		@participant.destroy
		redirect_to request.referer
	end

	private
	def get_participant
		@participant = TictactoeUser.find(params[:id])
	end
end
