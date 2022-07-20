require 'rails_helper'

RSpec.describe MerchantService do 
  describe 'merchant information' do 
    it 'returns merchants' do 
      merchant = MerchantService.get_all_merchants

      expect(merchant).to be_a Merchant
      expect(merchant).to be_a(Hash)
      merchant_data = search[:results].first

      expect(merchant_data).to have_key(:name)
      expect(merchant_data).to be_a(String)
    end
  end
end