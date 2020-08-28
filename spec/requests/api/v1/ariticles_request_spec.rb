require 'rails_helper'

RSpec.describe "Api::V1::Ariticles", type: :request do

  describe "GET /drafts" do
    it "returns http success" do
      get "/api/v1/ariticles/drafts"
      expect(response).to have_http_status(:success)
    end
  end

end
