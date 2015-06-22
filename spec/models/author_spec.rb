require 'rails_helper'

RSpec.describe Author do
  include_context 'books with authors'

  describe 'generates proper slug' do
    subject { first_author.to_param }
    it { should eq 'first-author' }
  end

end
