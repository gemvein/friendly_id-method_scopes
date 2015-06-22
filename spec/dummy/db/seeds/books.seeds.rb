after :authors do
  first_author = Author.friendly.find('first-author')
  second_author = Author.friendly.find('second-author')

  FactoryGirl.create(:book, title: 'Book A', author: first_author)
  FactoryGirl.create(:book, title: 'Book B', author: first_author)
  FactoryGirl.create(:book, title: 'Book C', author: second_author)
  FactoryGirl.create(:book, title: 'Book B', author: second_author)
end