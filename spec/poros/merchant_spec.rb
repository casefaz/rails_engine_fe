require 'rails_helper'

RSpec.describe Merchant do 
  it 'has attributes and exists' do 
    data = ({
            id: '1',
            type: 'merchant',
            attributes: {
                          name: 'Merchants R Us'
                        }
            })
    merchant = Merchant.new(data)

    expect(merchant).to be_an_instance_of(Merchant)
    expect(merchant.id).to eq('1')
    expect(merchant.name).to eq('Merchants R Us')
  end
end