require 'rails_helper'

RSpec.describe Book do
  include_context 'books with authors'

  describe 'generates proper slug for first item' do
    subject { book_b_first.to_param }
    it { should eq 'book-b' }
  end
  describe 'generates proper slug for same slug in another scope' do
    subject { book_b_second.to_param }
    it { should eq 'book-b' }
  end

end
