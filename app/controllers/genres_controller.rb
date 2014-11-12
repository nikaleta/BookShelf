class GenresController < ApplicationController
	attr_accessor :books

	def show
		@genre = Genre.find(params[:id])
	end

	private
	def genre_params
		params.require(:genre).permit(:title)
	end

end
