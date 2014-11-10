class GenresController < ApplicationController
	attr_accessor :books
	def new
		@genre = Genre.new
	end

	def destroy
		@genre = Genre.find(params[:id])
		@genre.destroy
		redirect_to genres_path
	end

	def create
		@genre = Genre.new(genre_params)
		@genre.books = @books
		if @genre.save
		redirect_to @genre
		else
		render 'new'
		end
	end
	
	def show
		@genre = Genre.find(params[:id])
	end

	def index
		@genres = Genre.all
	end

	private
	def genre_params
		params.require(:genre).permit(:title)
	end

end
