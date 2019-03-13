class BannerImagesController < ApplicationController
  respond_to :js, :html, :json
  before_action :banner_img_params

  def create
    @banner = Banner.find(banner_img_params[:banner_id])
    @banner.banner_image.attach(banner_img_params[:banner_image])
    flash[:notice] = "Bannière créé !"
    respond_with(@banner)
  end

  def update
    @banner = Banner.find(params[:banner_id])
    @banner.banner_image.attach(banner_img_params[:banner_image])
    respond_with(@banner)
  end

  private

  def banner_img_params
    params.permit(:banner_img, :banner_id)
  end

end
