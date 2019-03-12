class Admin::BannersController < AdminsController
  before_action :set_banner, except: [:index]
  respond_to :js, :html, :json


  def index
    @banners = Banner.all.sort.reverse
  end

  def show

  end

  def create
    @banner = Banner.new(banner_params)
    flash[:notice] = "Bannière créé !"
    respond_with(@banner)
  end

  def update
    flash[:notice] = "Bannière mis à jour"
    respond_with(@banner)
  end

  private

  def set_banner
    @banner = Banner.find(params[:id])
  end

  def article_params
    params.require(:banner).permit(:title, :subtitle, :banner_imgs)
  end
end
