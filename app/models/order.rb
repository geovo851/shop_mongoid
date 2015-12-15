class Order
  include Mongoid::Document
  field :status, type: String
  field :delivary_adress, type: String
  field :order, type: Mongoid::Boolean, default: false
  field :phone_number, type: Integer
  field :total_sum, type: Float, default: 0
  belongs_to :payment, index: true
  embeds_many :products_orders

  validates :payment, :delivary_adress, :phone_number, presence: true, if: :order
end
