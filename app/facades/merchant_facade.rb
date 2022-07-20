class MerchantFacade
  def self.all_merchants
    json = MerchantService.get_all_merchants
    json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end