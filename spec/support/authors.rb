shared_context 'authors' do
  let(:first_author) { FactoryBot.create(:author, full_name: 'First Author') }
  let(:second_author) { FactoryBot.create(:author, full_name: 'Second Author') }
end