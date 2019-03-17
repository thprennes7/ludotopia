class Admin::SupportsController < AdminsController
  before_action :set_support, except: [:index]
  respond_to :js, :html, :json

def index
  @supports = Support.paginate(page: params[:page], per_page: 10).order('created_at DESC')
  respond_with(@supports)
end

def show
end


private

def set_support
  @support = Support.find(params[:id])
end

def article_params
  params.require(:support).permit(:title, :description, :email, :last_name)
end

end
