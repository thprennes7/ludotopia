module ApplicationHelper
	include TictactoeUsersHelper

	def is_admin?(user)
		user_signed_in? && user.status == Status.last
	end


	def markdown(text)
		markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
			no_intra_emphasis: true,
			fenced_code_blocks: true,
			disable_indented_code_blocks: true,
			autolink: true,
			tables: true,
			underline: true,
			highlight: true
		)
		return markdown.render(text).html_safe
	end

end
