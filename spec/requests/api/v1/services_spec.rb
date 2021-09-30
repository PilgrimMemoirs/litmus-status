require 'rails_helper'

RSpec.describe "Api::V1::Services", type: :request do
  let!(:services) { create_list(:service, 5) }
  let!(:service_id) { services.first.id }

  describe "GET /index" do
    before { get "/api/v1/services" }

    it 'returns categories' do
      expect(json).not_to be_empty
      expect(json.size).to eq(5)
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    before { get "/api/v1/services/#{service_id}" }

    context 'when service exists' do
     it 'returns status code 200' do
       expect(response).to have_http_status(200)
     end

     it 'returns the service item' do
       expect(json['id']).to eq(service_id)
     end
   end
  end
end
