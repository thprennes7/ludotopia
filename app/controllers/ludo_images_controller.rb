class LudoImagesController < ApplicationController
	 before_action :ludo_img_params

  def create
    @hometab = HomeTab.find(ludo_img_params[:home_tab_id])
    flash[:notice] = "Image attachée !" if @hometab.ludo_image.attach(ludo_img_params[:ludo_image])
    respond_to do |format|
      format.js
      format.html {redirect_to request.referer}
    end
  end

  private

  def ludo_img_params
    params.permit(:ludo_image, :home_tab_id)
  end

end
