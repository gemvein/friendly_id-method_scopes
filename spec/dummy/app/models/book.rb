class Book < ActiveRecord::Base
  # Rolify Gem
  resourcify

  # FriendlyId Gem
  extend FriendlyId
  friendly_id :title, use: [:slugged, :method_scopes], scope_methods: :also_written_by

  def authors
    Author.with_role(:author, self)
  end

  def also_written_by
    Book.where(id: authors.collect { |o| o.books.ids }.flatten )
  end
end
