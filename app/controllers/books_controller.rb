class BooksController < ApplicationController
  before_action :find_book, only: [:show, :edit, :update, :destroy]
  before_action :find_author, only: [:update, :create]


  def new
    @book = Book.new
    authorize! :new, @book
  end

  def index
    if params[:search].present?
      @books = Book.search(params[:search])
    else
      @books = Book.all
    end
  end

  def edit
    authorize! :edit, @book
  end
  def show

  end


  def update
    if @book.update_attributes(book_params.merge({ author_id: @author.id}))
      redirect_to @book
    else
      render 'edit'
    end
  end

  def destroy
    authorize! :destroy, @book
    @book.destroy

    redirect_to books_path
  end

  def create

    @book = Book.new(book_params)

    @book.author = @author
    if @book.save
      redirect_to @book
    else
      render 'new'
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :description, :publication)
  end

  def find_book
    @book = Book.find(params[:id])
  end

  def find_author
    @author = Author.find_or_create_by(name: params[:book][:author_name].strip)
  end
end
