require 'rails_helper'

RSpec.describe AuthorsController do
  describe 'routing' do

    it 'routes to #index' do
      expect(:get => '/authors').to route_to('authors#index')
    end

    it 'routes to #show' do
      expect(:get => '/authors/author-slug').to route_to('authors#show', id: 'author-slug')
    end

  end
end
