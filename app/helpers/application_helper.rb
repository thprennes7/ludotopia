module ApplicationHelper
	include TictactoeUsersHelper

  def is_admin?(user)
    user_signed_in? && user.status == Status.last
  end

end
