class AdminsController < ApplicationController
  # before_action :require_admin

  private

  def require_admin
    unless is_admin?(current_user)
      redirect_to root_path
    end
  end
end
