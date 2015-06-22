class Author < ActiveRecord::Base
  # Rolify Gem
  rolify

  # FriendlyId Gem
  extend FriendlyId
  friendly_id :full_name, use: :slugged

  def books
    Book.with_role(:author, self)
  end
end
