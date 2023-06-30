FactoryBot.define do
  factory :synopsis do
    description { "MyString" }
    association :universe
  end
end
