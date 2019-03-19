class Admin::SupportsController < AdminsController
  layout "ajax_gets"
  before_action :set_support, except: [:index]
  respond_to :js, :html, :json

def index
  @supports = Support.all.order('created_at DESC')
end

def show
end

def destroy
  flash[:notice] = "Message supprimé" if @support.destroy
  respond_with(@support)
end

private

def set_support
  @support = Support.find(params[:id])
end

def support_params
  params.require(:support).permit(:title, :description, :email, :last_name)
end

end
