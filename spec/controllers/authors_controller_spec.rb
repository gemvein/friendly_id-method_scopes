require 'rails_helper'

RSpec.describe AuthorsController do
  include_context 'books with authors'

  describe "GET #index" do
    it "assigns all authors as @authors" do
      get :index
      expect(assigns(:authors)).to eq([first_author, second_author])
    end
  end

  describe "GET #show" do
    it "assigns the requested author as @author" do
      get :show, {:id => first_author.to_param}
      expect(assigns(:author)).to eq(first_author)
    end
  end

end
