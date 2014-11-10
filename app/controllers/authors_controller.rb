class AuthorsController < ApplicationController
	def new
		@author = Author.new
	end

	def destroy
  	@author = Author.find(params[:id])
  	@author.destroy

  	redirect_to authors_path
	end

	def create
		@author = Author.new(author_params)
		if @author.save
    	redirect_to @author
  	else
    	render 'new'
  	end
	end

	def show
  	@author = Author.find(params[:id])
	end

  def index
 		@authors = Author.all
	end

	private
  def author_params
    params.require(:author).permit(:name)
  end

end
