class BooksController < ApplicationController
  before_action :set_author
  before_action :set_book, only: :show

  # GET /authors/author-slug/books
  def index
    @books = @author.books
  end

  # GET /authors/author-slug/books/book-slug
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = @author.books.friendly.find(params[:id])
    end

    def set_author
      @author = Author.friendly.find(params[:author_id])
    end
end
