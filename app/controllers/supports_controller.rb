class SupportsController < ApplicationController
  respond_to :html, :json
  before_action :set_support, except: [:index, :new, :create]


  def create
    @support = Support.new(support_params)
    flash[:notice] = "Message envoyé !" if @support.save flash[:danger] = "email invalide"

    redirect_to root_path
  end

  private

  def set_support
    @support = Support.find(params[:id])
  end

  def support_params
    params.permit(:title, :description, :email, :last_name)
  end

end
