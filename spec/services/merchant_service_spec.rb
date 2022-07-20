require 'rails_helper'

RSpec.describe MerchantService do 
  describe 'merchant information' do 
    it 'returns merchants' do 
      merchant = MerchantService.get_all_merchants

      expect(merchant).to be_a(Hash)
      expect(merchant).to have_key(:data)
      expect(merchants[:data][0]).to have_key(:id)
      expect(merchants[:data][0][:type]).to eq('merchant')
      merchant_data = merchant[:data][0][:attributes]


      expect(merchant_data).to have_key(:name)
      expect(merchant_data[:name]).to be_a(String)
    end
  end
end