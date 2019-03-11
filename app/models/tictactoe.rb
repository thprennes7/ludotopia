class Tictactoe < ApplicationRecord
	has_many :tictactoe_user
	validate :status, persence: true

	after_create :create_grid


	def create_grid
		#Create the JSON file for the grid of the party
		grid = TictactoeGrid.all

		file = File.open("/db/tictactoe/party#{self.id}", "w")

		file.write(grid.to_json)

		file.close
	end
end
