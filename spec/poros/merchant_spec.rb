require 'rails_helper'

RSpec.describe Merchant do 
  it 'has attributes and exists' do 
    data = ({
            name: 'Merchants R Us'
            })
    merchant = Merchant.new(data)

    expect(merchant).to be_an_instance_of(Merchant)
    expect(merchant.name).to eq('Merchants R Us')
  end
end