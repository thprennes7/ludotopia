class BannerImagesController < ApplicationController
  before_action :banner_img_params

  def create
    @banner = Banner.find(banner_img_params[:banner_id])
    flash[:notice] = "Image attachée !" if @banner.banner_image.attach(banner_img_params[:banner_image])
    respond_to do |format|
      format.js
      format.html {redirect_to request.referer}
    end
  end

  private

  def banner_img_params
    params.permit(:banner_image, :banner_id)
  end

end
