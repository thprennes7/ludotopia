class ContactsController < ApplicationController
	before_action :authenticate_user!
	respond_to :js, :html, :json
	
	def create
		user = User.find_by(username: params[:user])
		unless Contact.find_by(me: current_user, friend: user) || user == current_user
			@contact = Contact.create(me: current_user, friend: user)
		end
		respond_to do |format|
			format.js
			format.html
		end
	end

	def index
		@users = User.all
		@friends = Contact.where(me: current_user)
	end

	def destroy
		@contact = Contact.find(params[:id])
		flash[:success] = "Amis supprimé !" if @contact.destroy
    respond_with(@contact)
	end
end
