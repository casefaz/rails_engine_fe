class Item

  attr_reader :id,
              :name,
              :description,
              :unit_price, 
              :merchant_id
  def initialize(attributes)
    @id = attributes[:id]
    @name = attributes[:attributes][:name]
    @description = attributes[:attributes][:description]
    @unit_price = attributes[:attributes][:unit_price]
    @merchant_id = attributes[:attributes][:merchant_id]
  end
end