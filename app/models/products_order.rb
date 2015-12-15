class ProductsOrder
  include Mongoid::Document
  field :quantity, type: Float, default: 0
  field :price, type: Float, default: 0

  belongs_to :product, index: true
  field :name_product, type: String
  belongs_to :color, index: true
  field :title_color, type: String
  belongs_to :size, index: true
  field :title_size, type: String
  has_many :best_sellers

  embedded_in :order
end
