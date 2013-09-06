class SessionsController < ApplicationController
	def new
	end

	def create
	  doc = Doc.find_by_name(params[:name])
	  if doc && doc.authenticate(params[:password])
	    session[:doc_id] = doc.id
	    redirect_to questions_path, notice: "Logged in!"
	  else
	    flash.now.alert = "Name or password is invalid"
	    render "new"
	  end
	end

	def destroy
	  session[:doc_id] = nil
	  redirect_to root_url, notice: "Logged out!"
	end
end
