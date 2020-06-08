shared_context 'books with authors' do
  include_context 'authors'
  let(:book_a) { FactoryBot.create(:book, title: 'Book A', author: first_author) }
  let(:book_b_first) { FactoryBot.create(:book, title: 'Book B', author: first_author) }
  let(:book_b_second) { FactoryBot.create(:book, title: 'Book B', author: second_author) }
  let(:book_c) { FactoryBot.create(:book, title: 'Book C', author: second_author) }
end