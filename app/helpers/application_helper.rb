module ApplicationHelper
	include TictactoeUsersHelper

  def is_admin?(user)
    user_signed_in? && user.status == Status.last
  end

	def find_comment(article)
		Comment.where(article_id: article.id)
	end

end
