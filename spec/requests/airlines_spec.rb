require 'rails_helper'

RSpec.describe "Airlines", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/airlines/show"
      expect(response).to have_http_status(:success)
    end
  end

end
