class TictactoeGrid < ApplicationRecord
	def all_cases
		# sort all cases in an array
		grid = Array.new
		self.each do |case|
			grid << case.case
		end
		grid
	end
end
