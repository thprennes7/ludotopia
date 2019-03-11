class TictactoeUser < ApplicationRecord
	belongs_to :tictactoe
	belongs_to :user
end
