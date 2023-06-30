require 'rails_helper'

RSpec.describe Synopsis, type: :model do
  let(:universe) { create(:universe, title: 'Contrées givrées') }
  let(:synopsis) { create(:synopsis, universe: universe, description: 'Nous allons rechercher ... dans ....') }

  it 'has a valid factory' do
    expect(synopsis).to be_valid
  end
end
