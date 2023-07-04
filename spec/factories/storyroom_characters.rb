FactoryBot.define do
  factory :storyroom_character do
    association :storyroom
    association :user
    photo { "test storyroom character photo" }
    name { "test storyroom character" }
    quotation { "test storyroom character quotation" }
    background { "test storyroom character background" }
    age { 1 }
  end
end
