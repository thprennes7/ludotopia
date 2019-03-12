class TictactoeGrid < ApplicationRecord
	def all_cases(table)
		# sort all cases in an array
		grid = Array.new
		table.each do |case|
			grid << case.case
		end
		grid
	end
end
