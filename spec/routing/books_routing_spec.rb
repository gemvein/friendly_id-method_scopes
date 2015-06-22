require 'rails_helper'

RSpec.describe BooksController do
  describe 'routing' do

    it 'routes to #index' do
      expect(:get => '/authors/author-slug/books').to route_to('books#index', author_id: 'author-slug')
    end

    it 'routes to #show' do
      expect(:get => '/authors/author-slug/books/book-slug').to route_to('books#show', author_id: 'author-slug', id: 'book-slug')
    end

  end
end
