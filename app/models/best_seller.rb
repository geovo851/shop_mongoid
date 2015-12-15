class BestSeller
  include Mongoid::Document
  field :quantity, type: Float, default: 0
  belongs_to :product, index: true

  def self.add_products products_orders
    products_orders.each do |p|
      create(product_id: p.product_id, quantity: p.quantity)
    end
  end

  def self.find_product count
    all.sort(quantity: -1).limit(count)
  end
end
