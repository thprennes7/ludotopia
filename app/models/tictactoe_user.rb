class TictactoeUser < ApplicationRecord
	belongs_to :tictactoe
	belongs_to :user

	scope :whitelist, lambda { |user, party| where(user_id: user.id, tictactoe_id: party.id) }
end
