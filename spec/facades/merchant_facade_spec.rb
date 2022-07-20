require 'rails_helper'

RSpec.describe MerchantFacade do 
  it 'turns service response into poro objects' do 
    merchants = MerchantFacade.all_merchants

    expect(merchants).to be_a(Array)
    expect(merchants).to be_all(Merchant)
  end
end