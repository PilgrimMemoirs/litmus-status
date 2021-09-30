require 'rails_helper'

RSpec.describe "Api::V1::Incidents", type: :request do
  let!(:incidents) { create_list(:service, 5) }
  let!(:incident_id) { incidents.first.id }

  describe "GET /api/v1/incidents" do
    before { get "/api/v1/incidents" }

    it 'returns incidents' do
      expect(json).not_to be_empty
      expect(json.size).to eq(5)
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end


  describe "GET /api/v1/incidents/:id" do
    before { get "/api/v1/incidents/#{incident_id}" }

    context 'when service exists' do
     it 'returns status code 200' do
       expect(response).to have_http_status(200)
     end

     it 'returns the service item' do
       expect(json['id']).to eq(incident_id)
     end
  end


  describe "POST /api/v1/incidents" do
    before { post "/api/v1/incidents", params: { title: } }

    context 'when service exists' do
     it 'returns status code 200' do
       expect(response).to have_http_status(200)
     end

     it 'returns the service item' do
       expect(json['id']).to eq(incident_id)
     end
  end
end
