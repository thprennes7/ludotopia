class Admin::BannersController < AdminsController
  before_action :set_banner, except: [:index, :create]
  respond_to :js, :html, :json


  def index
    @banners = Banner.all.sort.reverse
  end

  def show

  end

  private

  def set_banner
    @banner = Banner.find(params[:id])
  end

  def banner_params
    params.permit(:title, :subtitle, :banner_imgs)
  end
end
