require 'rails_helper'

RSpec.describe "Storyrooms", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/storyrooms/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/storyrooms/show"
      expect(response).to have_http_status(:success)
    end
  end

end
