class Tictactoe::TictactoeUsersController < ApplicationController
	before_action :authenticate_user!
	respond_to :js, :html, :json

	def create
		user = TictactoeUser.new(tictactoe_id: params[:game], user_id: params[:user])
		if user.save
			respond_with(user)
		else
			flash[:error] = "Une erreur est survenue."
		end
	end
end
