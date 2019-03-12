class TictactoeGrid < ApplicationRecord

	scope :all_cases, get_cases(all)

	def get_cases(table)
		# sort all cases in an array

		table.each do |table_case|
			grid << table_case.case
		end

		grid
	end
end
