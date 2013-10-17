class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

# authorization / authentication method w/ helper

	def current_doc		
	  @current_doc ||= Doc.find(session[:doc_id]) if session[:doc_id]
	end
	helper_method :current_doc

	def authorize
	  redirect_to login_url, alert: "Not authorized" if current_doc.nil?
	end
end
