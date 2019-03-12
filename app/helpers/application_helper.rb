module ApplicationHelper
	include TictactoeUsersHelper
  def is_admin?
    user_signed_in? && current_user.status_id == 4
  end
end
