FactoryBot.define do
  factory :universe_character_association do
    association :universe
    association :character
  end
end
