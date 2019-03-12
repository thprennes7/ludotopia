class TictactoeGrid < ApplicationRecord

	scope :all_cases, { all.each do |case_row|
												grid << case_row.case
											end
											grid }

	def all_cases
		# sort all cases in an array

		grid = Array.new

		self.each do |table_case|
			grid << table_case.case
		end

		grid
	end
end
