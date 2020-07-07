require 'rails_helper'

RSpec.describe "Statuses", type: :request do
  it "GET /status" do
    get "/status"
    expect(response).to have_http_status(200)
    expect(response.media_type).to eq("application/json")
#   expect(response).to have_http_status(:ok)
    expect(response.body).to include({ status: "ok" }.to_json)
  end
end
