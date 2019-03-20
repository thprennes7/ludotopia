class ContactsController < ApplicationController
	def create
		if Contact.find_by(me: current_user, friend: params[:user]) && params[:user] != current_user
			contact = Contact.create(me: current_user, friend: params[:user])
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
