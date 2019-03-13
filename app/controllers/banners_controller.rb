class BannersController < ApplicationController
  before_action :set_banner, except: [:index, :create]
  respond_to :js, :html, :json


  def index
    @banners = Banner.all.sort.reverse
  end

  def show

  end

  def create
    @banner = Banner.new(banner_params)
    flash[:notice] = "Bannière créé !" if @banner.save
    respond_with(@banner)
  end

  def update
    flash[:notice] = "Bannière mis à jour" if @banner.update_attributes(banner_params)
    respond_with(@banner)
  end

  def destroy
    flash[:notice] = "Bannière mis à jour" if @banner.destroy
    respond_with(@banner)
  end

  private

  def set_banner
    @banner = Banner.find(params[:id])
  end

  def banner_params
    params.permit(:title, :subtitle)
  end
end
