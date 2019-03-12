module TictactoeUsersHelper
	def is_whitelisted?(game)
		TictactoeUser.find_by(tictactoe_id: game, user_id: current_user.id).present?
	end
end
