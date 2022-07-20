class MerchantService
  def self.get_all_merchants
    response = conn.get('/api/v1/merchants')
    results = JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchant(id)
    response = conn.get("/api/v1/merchants/#{id}")
    results = JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def self.get_merchant_items(id)
    response = conn.get("/api/v1/merchants/#{id}/items")
    results = JSON.parse(response.body, symbolize_names: true)[:data]
  end
  
  def self.conn 
    url = 'http://localhost:3000'
    Faraday.new(url: url)
  end
end