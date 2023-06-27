FactoryBot.define do
  factory :storycard do
    title { "test storycard" }
    association :storyroom
  end
end
