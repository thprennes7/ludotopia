class Tictactoe < ApplicationRecord
	has_many :tictactoe_user
	has_many :users, through: :tictactoe_user
	validate :status, persence: true
end
