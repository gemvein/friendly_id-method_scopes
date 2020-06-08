FactoryBot.define do
  factory :author do
    full_name { Faker::Name.name }
    initialize_with { Author.where(full_name: full_name).first_or_create }
  end
end