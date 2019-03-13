class TictactoeUser < ApplicationRecord
	belongs_to :tictactoe
	belongs_to :user

	scope :whitelist, lambda { |user, party| find_by(user_id: user.id, tictactoe_id: party.id) }

	scope :max_participant, lambda { |party| where(tictactoe_id: party).lenght < 2 }

	scope :not_already_in?, lambda { |user, party| whitelist(user, party) != nil}
end
