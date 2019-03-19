module ApplicationHelper
	include TictactoeUsersHelper

	def is_admin?(user)
		user_signed_in? && user.status == Status.find_by(name: "Admin")
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

	def tidy_date(date)
		"#{date.year}/#{date.month}/#{date.day} - #{date.hour}:#{date.min}"
	end

	def find_comment(article)
		Comment.where(article_id: article.id)
	end

	def find_like(article)
		Like.where(article_id: article.id)
	end
end
