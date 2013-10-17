class DocsController < ApplicationController

  # doc controller, allows creation of doc's with variables
def new
  @doc = Doc.new
end

# kills 'x' doc that is found
def destroy
  	@doc = Doc.find params[:id]
   @doc.destroy
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