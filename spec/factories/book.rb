FactoryGirl.define do
  factory :book do
    title { Faker::Company.catch_phrase }
    transient do
      author { Author.order("RANDOM()").first }
    end
    # the after(:create) yields two values; the user instance itself and the
    # evaluator, which stores all values from the factory, including transient
    # attributes; `create_list`'s second argument is the number of records
    # to create and we make sure the user is associated properly to the post
    after(:create) do |book, evaluator|
      evaluator.author.add_role(:author, book)
    end
  end
end