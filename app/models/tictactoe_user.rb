class TictactoeUser < ApplicationRecord
	belongs_to :tictactoe
	belongs_to :user

	scope :whitelist, lambda { |user, party| find_by(user_id: user.id, tictactoe_id: party.id) }
end
