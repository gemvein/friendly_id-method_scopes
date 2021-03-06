require 'rails_helper'

RSpec.describe BooksController do
  include_context 'books with authors'

  describe "GET #index" do
    let!(:books) { [book_a, book_b_first] }
    it "assigns author's books as @books" do
      get :index, params: { author_id: first_author.to_param }
      expect(assigns(:books)).to eq(books)
    end
  end

  describe "GET #show" do
    let!(:book) { book_b_first }
    it "assigns the requested book as @book" do
      get :show, params: {
        author_id: first_author.to_param, id: book_b_first.to_param
      }
      expect(assigns(:book)).to eq(book)
    end
  end

end
