class BooksController < ApplicationController
  before_action :authenticate_user!
  def index
    @books = Book.order(rating: :desc)
  end

  def show
    @book = Book.find(params[:id])
    if @book.counter == nil
      @book.counter = 1
    else
    @book.counter +=1
  end
    @book.save
  end
end
