require 'rails_helper'

RSpec.describe "ToysUsers", type: :request do
  describe "GET /toys_users" do
    it "works! (now write some real specs)" do
      get toys_users_path
      expect(response).to have_http_status(200)
    end
  end
end
