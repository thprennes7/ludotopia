class Admin::HomeTabsController < AdminsController
  layout "ajax_gets"
  before_action :set_home_tab, except: [:index]
  respond_to :js, :html, :json


  def index
    @home_tabs = HomeTab.all.order('created_at DESC')
  end

  def show

  end

  private

  def set_home_tab
    @home_tab = HomeTab.find(params[:id])
  end

  def image_tab_params
    params.require(:home_tab).permit(:title, :article_image)
  end
end