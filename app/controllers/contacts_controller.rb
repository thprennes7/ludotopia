class ContactsController < ApplicationController
	before_action :authenticate_user!
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
		contact = Contact.find_by(me: current_user, friend: params[:user])
	end
end
