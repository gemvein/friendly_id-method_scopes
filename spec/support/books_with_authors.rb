shared_context 'books with authors' do
  include_context 'authors'
  let(:book_a) { first_author.books.friendly.find('book-a') }
  let(:book_b_first) { first_author.books.friendly.find('book-b') }
  let(:book_b_second) { second_author.books.friendly.find('book-b') }
  let(:book_c) { second_author.books.friendly.find('book-c') }
end