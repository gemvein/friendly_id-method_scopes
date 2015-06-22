class AuthorsController < ApplicationController
  before_action :set_author, only: :show

  # GET /authors
  def index
    @authors = Author.all
  end

  # GET /authors/author-slug
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author
      @author = Author.friendly.find(params[:id])
    end
end
