class Tictactoe < ApplicationRecord
	has_many :tictactoe_user
	validates :status, presence: true

	after_create :create_grid


	def create_grid
		#Create the JSON file for the grid of the party
		grid = TictactoeGrid.select(:id, :case)

		file = File.open("./db/tictactoe/party#{self.id}.json", "w")

		file.write('{"grid": ' + grid.to_json + ', "player": "1"}')

		file.close
	end
end
