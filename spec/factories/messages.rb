FactoryBot.define do
  factory :message do
    content { 'message test' }
    association :storyroom
    association :user
  end
end
