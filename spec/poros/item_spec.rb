require 'rails_helper'

RSpec.describe Item do 
  it 'exists and has attributes' do 
    attributes = {  id: '1',
                    attributes: {
                                name: '3d printed buff mouse',
                                description: 'its a 3d printed mouse from demon slayer',
                                unit_price: 1.55,
                                merchant_id: 1
                                 }
                  }

    item = Item.new(attributes)
    
    expect(item).to be_an_instance_of(Item)
    expect(item.name).to eq('3d printed buff mouse')
    expect(item.description).to eq('its a 3d printed mouse from demon slayer')
    expect(item.unit_price).to eq(1.55)
    expect(item.merchant_id).to eq(1)
    expect(item.id).to eq('1')

  end
end