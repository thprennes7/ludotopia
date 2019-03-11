class Tictactoe < ApplicationRecord
	has_many :tictactoe_user
	validate :status, persence: true
end
