class Admin::BannerImagesController < AdminsController
  respond_to :js, :html, :json

  private

  def banner_img_params
    params.permit(:banner_img, :id)
  end

end
