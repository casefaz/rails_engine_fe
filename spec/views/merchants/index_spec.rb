require 'rails_helper'

RSpec.describe 'Merchant Index' do
  xdescribe 'user story - merchants' do
    it 'has a list of merchants' do 
      merchant = Merchant.create!(name: 'Merchants R Us')
      merchant2 = Merchant.create!(name: 'Merchants R U')
      merchant3 = Merchant.create!(name: 'Merchants')

      visit merchants_path

      expect(page).to have_content(merchant.name)
      expect(page).to have_content(merchant2.name)
      expect(page).to have_content(merchant3.name)
    end
  end
end