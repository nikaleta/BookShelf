class WelcomeController < ApplicationController
  def index

  end
end
def index
  @author = Author.find(params[:author_id])

  # Access all items for that order
  @books = @author.items
end

# GET /orders/1/items/2
def show
  @author = Author.find(params[:author_id])

  # For URL like /orders/1/items/2
  # Find an item in orders 1 that has id=2
  @book = @author.books.find(params[:id])
end

# GET /orders/1/items/new
def new
  @author = Author.find(params[:author_id])


  # Associate an item object with order 1
  @book = @author.books.build
end

# POST /orders/1/items
def create
  @author = Author.find(params[:author_id])

  # For URL like /orders/1/items
  # Populate an item associate with order 1 with form data
  # Order will be associated with the item
  @book = @author.items.build(params[:book])
  if @book.save
    # Save the item successfully
    redirect_to author_book_url(@author, @book)
  else
    render :action => "new"
  end
end

# GET /orders/1/items/2/edit
def edit
  @author = Author.find(params[:author_id])

  # For URL like /orders/1/items/2/edit
  # Get item id=2 for order 1
  @book = @author.books.find(params[:id])
end

# PUT /orders/1/items/2
def update
  @author = Author.find(params[:author_id])
  @book = Book.find(params[:id])
  if @book.update_attributes(params[:book])
    # Save the item successfully
    redirect_to author_book_url(@author, @book)
  else
    render :action => "edit"
  end
end

# DELETE /orders/1/items/2
def destroy
  @author = Author.find(params[:author_id])
  @book = Book.find(params[:id])
  @book.destroy

  respond_to do |format|
    format.html { redirect_to author_books_path(@author) }
    format.xml  { head :ok }
  end
end
