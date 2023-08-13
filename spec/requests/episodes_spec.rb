require 'rails_helper'

RSpec.describe "Episodes", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/episodes/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/episodes/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/episodes/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/episodes/show"
      expect(response).to have_http_status(:success)
    end
  end

end
