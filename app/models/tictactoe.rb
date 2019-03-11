class Tictactoe < ApplicationRecord
	has_many :tictactoe_user
	validate :status, persence: true


	def create_grid
		grid = TictactoeGrid.all

		file = File.open("/db/tictactoe/party#{self.id}", "w")

		file.write(grid.to_json)
	end
end
