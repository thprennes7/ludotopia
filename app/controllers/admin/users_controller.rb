class Admin::UsersController < AdminsController
  before_action :set_user, except: [:index]
  respond_to :js, :html, :json


  def index
    @users = User.all.sort.reverse
  end

  def show

  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :status_id)
  end
end
