require 'rails_helper'

RSpec.describe Message, type: :model do
  let(:universe) { create(:universe, title: 'Contrées givrées')}
  let(:storyroom) { create(:storyroom, universe: universe, title: 'test storyroom') }
  let(:user) { create(:user, username: 'testuser', email: 'testmail@mail.com', password: 'password') }
  let(:message) { create(:message, content: 'message test', storyroom: storyroom, user: user) }

  it 'has a valid factory' do
    expect(message).to be_valid
  end

  it 'is invalid without a storyroom' do
    message.storyroom = nil
    expect(message).not_to be_valid
  end

  it 'is invalid without a user' do
    message.user = nil
    expect(message).not_to be_valid
  end

end
