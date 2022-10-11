class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to @book
    else
      render :edit ,status: :unprocessable_entity
    end
  end

  private
  def book_params
    params.require(:book).permit(:title,:description,:author,:image)
  end

end

#redirect_to: se usa cuando un objeto cambia su estado
#render: se usa cuando un objeto no ha cmabiado su estado y no queremos
#realizar nuevamente una peticion
