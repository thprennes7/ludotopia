class HomeTabsController < ApplicationController
  layout "ajax_gets"
  before_action :set_home_tab, except: [:index, :create]
  respond_to :js, :html, :json

  def create
  	@home_tab = HomeTab.new(home_tab_params)
  	flash[:notice] = "Image uploadé" if @home_tab.save
  	respond_with(@home_tab)
  end

  def destroy
  	flash[:notice] = "Image supprimée" if @home_tab.destroy
  end

  private

  def set_home_tab
    @home_tab = HomeTab.find(params[:id])
  end

  def home_tab_params
    params.permit(:title, :ludo_image)
  end
end
