class Admin::BannerImagesController < AdminsController
  respond_to :js, :html, :json

  def create
    @banner = Banner.find(params[:banner_id])
    @banner.banner_image.attach(banner_img_params[:banner_image])
    respond_with(@banner)
  end

  def update
    @banner = Banner.find(params[:banner_id])
    @banner.banner_image.attach(banner_img_params[:banner_image])
    respond_with(@banner)
  end

  private

  def banner_img_params
    params.permit(:banner_img, :id)
  end

end
