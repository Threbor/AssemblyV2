require 'rails_helper'

RSpec.describe StoryroomUserAssociation, type: :model do
  let(:universe) { create(:universe, title: 'Contrées givrées') }
  let(:storyroom) { create(:storyroom, universe: universe, title: 'Contrées givrées') }
  let(:user) { create(:user, email: 'testeur@mail.com', password: '123456',username: 'trahison') }
  let(:storyroom_user_association) { create(:storyroom_user_association, storyroom: storyroom, user: user) }

  it 'has a valid factory' do
    expect(storyroom_user_association).to be_valid
  end
end
