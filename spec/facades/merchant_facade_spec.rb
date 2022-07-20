require 'rails_helper'

RSpec.describe MerchantFacade do 
  it 'turns service response into poro objects' do 
    merchants = MerchantFacade.all_merchants

    expect(merchants).to be_a(Array)
    expect(merchants).to be_all(Merchant)
  end

  it 'turns service response into one poro object' do 
    merchant = MerchantFacade.one_merchant

    expect(merchant).to be_an_instance_of(Merchant)
    expect(merchant).to_not be_an(Array)
    expect(merchant.id).to eq('1')
    expect(merchant.name).to eq('Schroeder-Jerde')
  end
end