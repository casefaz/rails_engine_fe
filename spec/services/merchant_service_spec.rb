require 'rails_helper'

RSpec.describe MerchantService do 
  describe 'merchant information' do 
    it 'returns merchants' do 
      merchant = MerchantService.get_all_merchants

      expect(merchant).to be_a(Hash)
      expect(merchant).to have_key(:data)
      expect(merchant[:data][0]).to have_key(:id)
      expect(merchant[:data][0][:type]).to eq('merchant')
      merchant_data = merchant[:data][0][:attributes]


      expect(merchant_data).to have_key(:name)
      expect(merchant_data[:name]).to be_a(String)
    end

    it 'returns an individual merchant' do 
      merchant = MerchantService.get_merchant('1')

      expect(merchant).to be_a(Hash)
      expect(merchant).to have_key(:data)

      merchant_data = merchant[:data]
      expect(merchant_data).to have_key(:id)
      expect(merchant_data[:attributes]).to have_key(:name)
    end
  end

  describe 'get item data' do 
    it 'gets a merchants items data' do 
      
    end
  end
end