FactoryBot.define do
  factory :storyroom do
    title { "test storyroom" }
    association :universe
    association :user
  end
end
