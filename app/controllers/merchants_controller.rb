class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all_merchants
  end

  def show
    merchant = MerchantFacade.one_merchant
  end
end
