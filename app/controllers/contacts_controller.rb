class ContactsController < ApplicationController
	def create
		if Contact.find_by(me: current_user, friend: params[:user])
			contact = Contact.create(me: current_user, friend: params[:user])
		end
	end

	def index
		friends = Contact.where(me: current_user)
	end

	def destroy
		contact = Contact.find_by(me: current_user, friend: params[:user])
	end
end
