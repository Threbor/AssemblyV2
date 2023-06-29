FactoryBot.define do
  factory :storyroom_user_association do
    association :storyroom
    association :user
  end
end
