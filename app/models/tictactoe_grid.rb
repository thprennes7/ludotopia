class TictactoeGrid < ApplicationRecord
	def all_cases
		# sort all cases in an array

		grid = Array.new

		self.each do |table_case|
			grid << table_case.case
		end

		grid
	end
end
