FactoryBot.define do
  factory :event do
    association :storyroom
    association :word
    dice_value { 20 }
    event_output { "MyText" }
  end
end
