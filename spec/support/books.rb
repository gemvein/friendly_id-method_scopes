shared_context 'authors' do
  let(:first_author) { Author.friendly.find('first-author') }
  let(:second_author) { Author.friendly.find('second-author') }
end