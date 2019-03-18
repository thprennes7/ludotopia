class SupportsController < ApplicationController
  respond_to :js, :html, :json
  before_action :set_support, except: [:index]


  # def destroy
  #   flash[:notice] = "Message supprimé" if @support.destroy
  #   respond_with(@support)
  # end

  private

  def set_support
    @support = Support.find(params[:id])
  end

  def support_params
    params.require(:support).permit(:title, :description, :email, :last_name)
  end

end
