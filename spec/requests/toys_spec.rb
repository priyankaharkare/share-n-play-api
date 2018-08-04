require 'rails_helper'

RSpec.describe "Toys", type: :request do
  describe "GET /toys" do
    it "works! (now write some real specs)" do
      get toys_path
      expect(response).to have_http_status(200)
    end
  end
end
