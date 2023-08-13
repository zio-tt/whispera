require 'rails_helper'

RSpec.describe "Likes", type: :request do
  describe "GET /ranking" do
    it "returns http success" do
      get "/likes/ranking"
      expect(response).to have_http_status(:success)
    end
  end

end
