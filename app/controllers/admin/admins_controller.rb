class Admin::AdminsController < ApplicationController
  layout "admin"
	before_action :authenticate_user!
  before_action :require_admin

  def index
  	
  end

  private

  def require_admin
    unless is_admin?(current_user)
      redirect_to root_path
    end
  end
end
