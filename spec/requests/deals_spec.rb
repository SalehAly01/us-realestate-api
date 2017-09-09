require 'rails_helper'

RSpec.describe 'US Real Estate API', type: :request do
  # initialize test data
  let!(:deals) { create_list(:deal, 10) }
  let(:deal_id) { deals.first.id }

  describe 'GET /deals' do
    before { get '/deals' }

    it 'returns deals' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /deals/:id' do
    before { get "/deals/#{deal_id}" }

    context 'when the record exists' do
      it 'returns the deal' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(deal_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:deal_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match("{\"message\":\"Couldn't find Deal with 'id'=100\"}")
      end
    end
  end

  describe 'POST /deals' do
    # valid payload
    let(:valid_attributes) { { street: '3526 HIGH ST', city: 'SACRAMENTO', zip: '95838', state: 'CA', beds: '2', baths: '1', sq_ft: '836', realty_type: 'Residential', sale_date: '2008-05-21 04:00:00 UTC', price: '59222', latitude: '38.631913', longitude: '-121.434879' } }

    context 'when the request is valid' do
      before { post '/deals', params: valid_attributes }

      it 'creates a deal' do
        expect(json['city']).to eq('SACRAMENTO')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/deals', params: { city: 'SACRAMENTO' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end


    end
  end

  describe 'PUT /deals/:id' do
    let(:valid_attributes) { { city: 'NORTH HIGHLANDS' } }

    context 'when the record exists' do
      before { put "/deals/#{deal_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  describe 'DELETE /deals/:id' do
    before { delete "/deals/#{deal_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
