class Tictactoe < ApplicationRecord
	has_many :tictactoe_user
	has_one :tictactoe_grid
	validates :status, presence: true

	
end
