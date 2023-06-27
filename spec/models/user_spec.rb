require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user, username: 'testuser', email: 'testuser@example.com', password: 'password') }

  it 'has a valid factory' do
    expect(user).to be_valid
  end

  it 'is invalid without a username' do
    user.username = nil
    expect(user).not_to be_valid
  end

  it 'is invalid without an email' do
    user.email = nil
    expect(user).not_to be_valid
  end

  it 'is invalid without a password' do
    user.password = nil
    expect(user).not_to be_valid
  end

  it 'is invalid with a duplicate email' do
    create(:user, email: 'testuser@example.com')
    user = build(:user, email: 'testuser@example.com')
    expect(user).not_to be_valid
  end
end
