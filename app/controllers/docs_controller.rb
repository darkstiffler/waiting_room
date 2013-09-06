class DocsController < ApplicationController

def new
  @doc = Doc.new
end

def create
  @doc = Doc.new doc_params
  if @doc.save
    session[:doc_id] = @doc.id
    redirect_to questions_path, notice: "Thank you for signing up!"
  else
    render "new"
  end
end

def doc_params
	params.require(:doc).permit(:name, :password, :password_confirmation, :licence)
end

end