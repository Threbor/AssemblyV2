FactoryBot.define do
  factory :event do
    association :storyroom
    association :word
    dice_value { 20 }
    description { "MyText" }
  end
end
