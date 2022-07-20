class MerchantFacade
  def self.all_merchants
    json = MerchantService.get_all_merchants
    json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.one_merchant(id)
    json = MerchantService.get_merchant(id)
    Merchant.new(json)
  end

  def self.get_merchant_items(id)
    json = MerchantService.get_merchant_items(id)
    json.map do |item_data|
      Item.new(item_data)
    end
  end
end