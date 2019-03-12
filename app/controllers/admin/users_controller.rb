class Admin::UsersController < AdminsController
  before_action :set_user, except: [:index]
  respond_to :js, :html, :json


  def index
    @users = User.all.sort.reverse
  end

  def show

  end

  def create
    @user = User.new(user_params)
    flash[:notice] = "Création de l'utilisateur."
    respond_with(@user)
  end

  def update
    flash[:notice] = "Utilisateur mis à jour"
    respond_with(@user)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def article_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :status_id)
  end
end
