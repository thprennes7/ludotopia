class TictactoeGrid < ApplicationRecord
	def all_cases
		# sort all cases in an array
		table = self.all

		grid = Array.new

		table.each do |table_case|
			grid << table_case.case
		end

		grid
	end
end
