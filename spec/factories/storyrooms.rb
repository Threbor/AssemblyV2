FactoryBot.define do
  factory :storyroom do
    title { "test storyroom" }
    association :universe
    association :user
    storyroom_synopsis { "synopsis à modifier" }
  end
end
