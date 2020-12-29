require 'rails_helper'

RSpec.describe "Admin::Controlls", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/admin/controll/index"
      expect(response).to have_http_status(:success)
    end
  end

end
