require 'rails_helper'

RSpec.describe Word, type: :model do
  let(:word) { create(:word, title: 'test de mots') }

  it 'has a valid factory' do
    expect(word).to be_valid
  end

  it 'has a unique title' do
    duplicate_word = build(:word, title: word.title)
    expect(duplicate_word).not_to be_valid
  end

end
